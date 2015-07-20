package com.biavan.orca.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biavan.orca.model.Organizacao;
import com.biavan.orca.model.Usuario;
import com.biavan.orca.service.OrganizacaoService;
import com.biavan.orca.service.UsuarioService;


@Controller
@RequestMapping("/organizacao")
public class OrganizacaoController {

	private OrganizacaoService organizacaoService;
	
	@Autowired(required = true)
	@Qualifier(value = "organizacaoService")
	public void setOrganizacaoService(OrganizacaoService organizacaoService) {
		this.organizacaoService = organizacaoService;
	}

	@RequestMapping(value = "/atualizar", method = RequestMethod.POST)
	public String atualizar(
			@ModelAttribute("configEmpresa") Organizacao organizacao, Model model) {
		
		//this.organizacaoService.atualizaOrganizacao(organizacao);
	
		model.addAttribute("sucesso", "Configurações da organização foram atualizado com sucesso!");
		//model.addAttribute("organizacao", this.organizacaoService.getOrganizacaoById(1));
		return "organizacao_atualizar";
	}

	@RequestMapping(value = "/telaAtualizar")
	public String telaAtualizar(Model model) {
		//model.addAttribute("configEmpresa", this.organizacaoService.getConfigEmpresaById(1));
		return "empresa_atualizar";
	}
	
	@RequestMapping(value = "/novoUsuario")
	public String novoUsuario(
			@RequestParam("nome") String nome,
			@RequestParam("email") String email,
			@RequestParam("senha") String senha,
			Model model) {
		
		Organizacao organizacao = new Organizacao();
		organizacao.setNome(nome);
		
		Usuario usuario = new Usuario();
		usuario.setNome(nome);
		usuario.setLogin(email);
		usuario.setSenha(senha);
		usuario.setAtivo(true);
		usuario.setPapel("ROLE_USER");
		
		if (organizacaoService.insereOrganizacao(organizacao, usuario)) {
			return "redirect:/telaLogin";
		}
		
		return "redirect:/home?duplicado";
	}

}
