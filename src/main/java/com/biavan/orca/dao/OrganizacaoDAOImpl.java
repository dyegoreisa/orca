package com.biavan.orca.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.biavan.orca.model.Organizacao;
import com.biavan.orca.model.Usuario;

public class OrganizacaoDAOImpl implements OrganizacaoDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void insere(Organizacao organizacao) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(organizacao);
	}
	
	@Override
	public void atualiza(Organizacao organizacao) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(organizacao);
	}

	@Override
	public Organizacao getById(long id) {
		Session session = this.sessionFactory.getCurrentSession();
		Organizacao organizacao = (Organizacao) session.get(Organizacao.class,
				new Long(id));
		return organizacao;
	}
	
	@Override
	public Organizacao getByLogin(String login) {
		Session session = sessionFactory.getCurrentSession();
 
		Organizacao organizacao = (Organizacao) session.createQuery(
				"select org "
				+ "from Organizacao org join org.usuarios usu "
				+ "where usu.login = :login")
			.setString("login", login).uniqueResult();

		System.out.println(login);
		System.out.println(organizacao);
		
		return organizacao;
 
	}
}
