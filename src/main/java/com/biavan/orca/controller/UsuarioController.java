package com.biavan.orca.controller;

import java.beans.PropertyEditorSupport;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biavan.orca.model.Organizacao;
import com.biavan.orca.model.Usuario;
import com.biavan.orca.service.OrganizacaoService;
import com.biavan.orca.service.UsuarioService;


@Controller
@RequestMapping("/usuario")
public class UsuarioController {

	private UsuarioService usuarioService;
	private OrganizacaoService organizacaoService;
	
	@Autowired(required = true)
	@Qualifier(value = "usuarioService")
	public void setUsuarioService(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}
	
	@Autowired(required = true)
	@Qualifier(value = "organizacaoService")
	public void setOrganizacaoService(OrganizacaoService organizacaoService) {
		this.organizacaoService = organizacaoService;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
		binder.registerCustomEditor(Organizacao.class, "organizacao", new PropertyEditorSupport() {
			@Override
	        public void setAsText(String organizacaoId) {
				Organizacao organizacao = organizacaoService.getOrganizacaoById(Long.valueOf(organizacaoId));
				setValue(organizacao);
			}
		});
	}

	@RequestMapping(value = "/atualizar", method = RequestMethod.POST)
	public String atualizar(
			@ModelAttribute("usuario") Usuario usuario, Model model) {
		
		Usuario usuarioAtual = usuarioService.getUsuarioById(usuario.getId());
		usuario.setSenha(usuarioAtual.getSenha());
		usuario.setPapel(usuarioAtual.getPapel());
		usuario.setAtivo(usuarioAtual.isAtivo());
		
		if (usuarioService.atualizaUsuario(usuario)) {
			return "redirect:/usuario/perfil/" + usuario.getId() + "?sucesso";
		}
	
		return "redirect:/usuario/perfil/" + usuario.getId() + "?duplicado";
	}
	
	@RequestMapping(value = "/atualizarSenha", method = RequestMethod.POST)
	public String atualizarSenha(
			@ModelAttribute("usuario") Usuario usuario, Model model) {
		
		Usuario usuarioAtual = usuarioService.getUsuarioById(usuario.getId());
		usuario.setPapel(usuarioAtual.getPapel());
		
		usuarioService.atualizaUsuario(usuario);
	
		return "redirect:/usuario/perfil/" + usuario.getId() + "?sucesso";
	}

	@RequestMapping(value = "/telaAtualizar/{id}", method = RequestMethod.GET)
	public String telaAtualizar(@PathVariable("id") long id 
			, @RequestParam(required = false) String sucesso
			, @RequestParam(required = false) String duplicado
			, Model model
			, HttpSession session) {
		
		Usuario usuario = usuarioService.getUsuarioById(id);
		
		Organizacao organizacaoSessao = (Organizacao) session.getAttribute("organizacaoSessao");
		
		if (!organizacaoSessao.equals(usuario.getOrganizacao())) {
			Usuario usuarioSessao = (Usuario) session.getAttribute("usuarioLogado");
			model.addAttribute("login", usuarioSessao.getLogin());
			return "pages/403";
		}
		
		model.addAttribute("usuario", usuario);
		model.addAttribute("organizacao", usuario.getOrganizacao());
		
		if (sucesso != null) {
			model.addAttribute("sucesso", "Dados do usuário foram atualizado com sucesso!");
		}
		
		if (duplicado != null) {
			model.addAttribute("duplicado", "O e-mail informando já está em uso.");
		}
		
		return "usuario/usuario_atualizar";
	}

	@RequestMapping(value = "/perfil/{id}", method = RequestMethod.GET)
	public String perfil(@PathVariable("id") long id
			, @RequestParam(required = false) String sucesso
			, @RequestParam(required = false) String duplicado
			, Model model
			, HttpSession session) {
		
		Usuario usuario = usuarioService.getUsuarioById(id);
		
		Usuario usuarioSessao = (Usuario) session.getAttribute("usuarioLogado");
		
		if (!usuarioSessao.equals(usuario)) {
			model.addAttribute("login", usuarioSessao.getLogin());
			return "pages/403";
		}

		
		model.addAttribute("usuario", usuario);

		if (sucesso != null) {
			model.addAttribute("sucesso", "Dados do usuário foram atualizado com sucesso!");
		}
		
		if (duplicado != null) {
			model.addAttribute("duplicado", "O e-mail informando já está em uso.");
		}
		
		return "usuario/perfil";
	}
	
	@RequestMapping(value = "/inserir", method = RequestMethod.POST)
	public String inserir(@ModelAttribute("usuario") Usuario usuario, Model model) {

		usuario.setAtivo(true);
		usuario.setPapel("ROLE_USER");
		
		if (usuarioService.insereUsuario(usuario)) {
			return "redirect:/usuario/telaAtualizar/" + usuario.getId() + "?sucesso";
		}
	
		return "redirect:/usuario/telaAtualizar/" + usuario.getId() + "?duplicado";
	}

}
