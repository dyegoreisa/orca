package com.biavan.orca.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
			HttpServletRequest request, Model model) {
		
		if (error != null) {
			model.addAttribute("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			return "redirect:/home";
		}

		model.addAttribute("telaLogin", true);
		return "home";
	}
	
	@RequestMapping(value = "/telaLogin", method = RequestMethod.GET)
	public String telaLogin(@RequestParam(required = false) String emailAlterado
			, Model model) {
		
		if (emailAlterado != null) {
			model.addAttribute("emailAlterado", "Ao alterar o e-mail é necessário logar novamente.");
		}
		
		model.addAttribute("telaLogin", true);
		return "home";
	}	
	
	// customize the error message
	private String getErrorMessage(HttpServletRequest request, String key) {

		Exception exception = (Exception) request.getSession().getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Usuário ou senha inválidos! (001)";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage() + " (002)";
		} else {
			error = "Usuário ou senha inválidos! (003)";
		}

		return error;
	}

	// for 403 access denied page
	@RequestMapping(value = "/403")
	public String accesssDenied(Model model) {

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth == null) {
			return "redirect:/telaLogin";
		}
		
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);

			model.addAttribute("login", userDetail.getUsername());

		}

		return "pages/403";

	}
	
}
