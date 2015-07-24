package com.biavan.orca.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.biavan.orca.model.Organizacao;
import com.biavan.orca.model.Usuario;
import com.biavan.orca.service.OrganizacaoService;
import com.biavan.orca.service.UsuarioService;
import com.biavan.plugin.mail.Mailable;
import com.biavan.plugin.mail.MessageProperty;
import com.biavan.plugin.mail.SendMailSSL;

@Controller
@SessionAttributes("usuarioLogado")
public class HomeController {
	
	private UsuarioService usuarioService;
	
	@Autowired(required = true)
	@Qualifier(value = "usuarioService")
	public void setUsuarioService(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}

	@RequestMapping(value = {"/home", "/"}, method = RequestMethod.GET)
	public String home(
			@RequestParam(value = "duplicado", required = false) String duplicado,
			Locale locale, Model model) {
		
		if (duplicado != null) {
			model.addAttribute("duplicado", "O E-mail informado já existe.");
		}
		
		return "home";
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String signUp(Locale locale, Model model, HttpSession session) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		Usuario usuario = usuarioService.getUsuarioByLogin(auth.getName());
		Organizacao organizacao = usuario.getOrganizacao(); 
		
		session.setAttribute("usuario", usuario);
		session.setAttribute("organizacao", organizacao);
		return "dashboard";
	}
	
	@RequestMapping(value = "/contato", method = RequestMethod.POST)
	public @ResponseBody String contato(Locale locale
			, @RequestParam("name") String name
			, @RequestParam("email") String email
			, @RequestParam("message") String message) {
		
		if (enviarEmail(name, email, message))
			return "Mensagem enviada!";
		else
			return "E-mail não pode ser enviado. \nFavor tente mais tarde.";
	}

	public boolean enviarEmail(String nome, String email, String texto) {
		
		StringBuffer mensagem = new StringBuffer(); 
		
		mensagem.append("Contato pelo Fale conosco do Site.\n\n");
		mensagem.append("Nome: " + nome + "\nE-mail: " + email + "\nMensagem: " + texto);
		
		MessageProperty messageProperty = new MessageProperty();
		messageProperty.setFrom("dyego.azevedo@bol.com.br");
		messageProperty.setSubject("Contato pelo Fale Conosco do Site");
		messageProperty.setMessage(mensagem.toString());
		messageProperty.addRecipient("dyegoreisa@gmail.com");
		
		try {
			SendMailSSL.send(messageProperty, new ConfigEmail());
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	
	public class ConfigEmail implements Mailable {

		@Override
		public String getSmtpHost() {
			// TODO Auto-generated method stub
			return "smtps.bol.com.br";
		}

		@Override
		public String getSmtpPort() {
			// TODO Auto-generated method stub
			return "587";
		}

		@Override
		public String getSmtpLogin() {
			// TODO Auto-generated method stub
			return "dyego.azevedo@bol.com.br";
		}

		@Override
		public String getSmtpSenha() {
			// TODO Auto-generated method stub
			return "*****";
		}
		
	}
	
}
