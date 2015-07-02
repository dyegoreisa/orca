package com.biavan.orca.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biavan.orca.dao.OrganizacaoDAO;
import com.biavan.orca.model.Organizacao;

@Service
public class OrganizacaoServiceImpl implements OrganizacaoService {

	private OrganizacaoDAO organizacaoDAO;
	
	public void setOrganizacaoDAO(OrganizacaoDAO organizacaoDAO) {
		this.organizacaoDAO = organizacaoDAO;
	}
	
	@Override
	@Transactional
	public void atualizaOrganizacao(Organizacao organizacao) {
		organizacaoDAO.atualiza(organizacao);
	}

	@Override
	@Transactional
	public Organizacao getOrganizacaoById(long id) {
		return organizacaoDAO.getById(id);
	}

	@Override
	@Transactional
	public void insereOrganizacao(Organizacao organizacao) {
		organizacaoDAO.insere(organizacao);
	}
}
