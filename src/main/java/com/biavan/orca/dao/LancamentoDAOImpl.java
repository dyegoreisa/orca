package com.biavan.orca.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.biavan.orca.model.Lancamento;

public class LancamentoDAOImpl implements LancamentoDAO {
	
	private static final Logger logger = LoggerFactory
			.getLogger(LancamentoDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void insere(Lancamento lancamento) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(lancamento);
		logger.info("Lancamento salvo com sucesso! | " + lancamento);
		
	}

	@Override
	public void atualiza(Lancamento lancamento) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(lancamento);
		logger.info("Lancamento atualizado com sucesso! |" + lancamento);
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Lancamento> lista() {
		Session session = this.sessionFactory.getCurrentSession();
		
		List<Lancamento> listaDeLancamento = session.createQuery(
				"from Lancamento").list();
		return listaDeLancamento;
	}

	@Override
	public Lancamento getById(long id) {
		Session session = this.sessionFactory.getCurrentSession();
		Lancamento lancamento = (Lancamento) session.get(Lancamento.class,
				new Long(id));
		logger.info("Lancamento carregada com sucesso! | " + lancamento);
		return lancamento;
	}

	@Override
	public void remove(long id) {
		Session session = this.sessionFactory.getCurrentSession();
		Lancamento lancamento = (Lancamento) session.get(Lancamento.class,
				new Long(id));
		if (null != lancamento) {
			session.delete(lancamento);
		}
		logger.info("Lancamento apagado com sucesso! | " + lancamento);
		
	}

}
