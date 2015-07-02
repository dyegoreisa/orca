package com.biavan.orca.dao;

import com.biavan.orca.model.Organizacao;

public interface OrganizacaoDAO {
	
	public void insere(Organizacao organizacao);
	
	public void atualiza(Organizacao organizacao);

	public Organizacao getById(long id);

}
