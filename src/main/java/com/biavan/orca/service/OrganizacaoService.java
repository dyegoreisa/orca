package com.biavan.orca.service;

import com.biavan.orca.model.Organizacao;

public interface OrganizacaoService {

	public void insereOrganizacao(Organizacao organizacao);
	
	public void atualizaOrganizacao(Organizacao organizacao);

	public Organizacao getOrganizacaoById(long id);
	
}
