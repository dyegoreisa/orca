package com.biavan.orca.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biavan.plugin.mail.Mailable;
import com.biavan.plugin.mail.MessageProperty;
import com.biavan.plugin.mail.SendMailSSL;

@Controller
public class HomeController {

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
	public String signUp(Locale locale, Model model) {
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
