package com.biavan.orca.service;

import com.biavan.orca.model.Organizacao;
import com.biavan.orca.model.Usuario;

public interface OrganizacaoService {

	public boolean insereOrganizacao(Organizacao organizacao, Usuario usuario);
	
	public void atualizaOrganizacao(Organizacao organizacao);

	public Organizacao getOrganizacaoById(long id);
	
	public Organizacao getOrganizacaoByLogin(String login);
	
}
