package com.biavan.plugin.mail;

public interface Mailable {

	public String getSmtpHost();

	public String getSmtpPort();
	
	public String getSmtpLogin();

	public String getSmtpSenha();

}