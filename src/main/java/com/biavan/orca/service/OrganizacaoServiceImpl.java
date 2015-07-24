package com.biavan.orca.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biavan.orca.dao.OrganizacaoDAO;
import com.biavan.orca.dao.UsuarioDAO;
import com.biavan.orca.model.Organizacao;
import com.biavan.orca.model.Usuario;

@Service
public class OrganizacaoServiceImpl implements OrganizacaoService {

	private static final Logger logger = LoggerFactory
			.getLogger(OrganizacaoService.class);
	
	private OrganizacaoDAO organizacaoDAO;
	private UsuarioDAO usuarioDAO;
	
	public void setOrganizacaoDAO(OrganizacaoDAO organizacaoDAO) {
		this.organizacaoDAO = organizacaoDAO;
	}
	
	public void setUsuarioDAO(UsuarioDAO usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
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
	public boolean insereOrganizacao(Organizacao organizacao, Usuario usuario) {
		
		if (usuarioDAO.findByLogin(usuario.getLogin()) ==  null) {
		
			organizacaoDAO.insere(organizacao);
		
			usuario.setOrganizacao(organizacao);
	
			usuarioDAO.insere(usuario);
			
			return true;
		} 
		
		return false;
	}
	
	@Override
	public Organizacao getOrganizacaoByLogin(String login) {
		return organizacaoDAO.getByLogin(login);
	}
}
