package com.biavan.orca.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.biavan.orca.model.Usuario;

public class UsuarioDAOImpl implements UsuarioDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void insere(Usuario usuario) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(usuario);
	}

	@Override
	public void atualiza(Usuario usuario) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(usuario);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Usuario> lista() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Usuario> listaDeUsuario = session.createQuery(
				"from Usuario").list();
		return listaDeUsuario;
	}

	@Override
	public void remove(String login) {
		Session session = this.sessionFactory.getCurrentSession();
		Usuario usuario = findByLogin(login);

		if (null != usuario) {
			session.delete(usuario);
		}
	}
	
	@Override
	public Usuario getById(long id) {
		Session session = this.sessionFactory.getCurrentSession();
		Usuario usuario = (Usuario) session.get(Usuario.class,	new Long(id));
		return usuario;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Usuario findByLogin(String login) {
		Session session = this.sessionFactory.getCurrentSession();
		
		List<Usuario> usuarios = new ArrayList<Usuario>();
 
		usuarios = session.createQuery("from Usuario where login = :login")
			.setString("login", login).list();
 
		if (usuarios.size() > 0) {
			return usuarios.get(0);
		} else {
			return null;
		}
	}


}
