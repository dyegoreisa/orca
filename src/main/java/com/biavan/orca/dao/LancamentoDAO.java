package com.biavan.orca.dao;

import java.util.List;

import com.biavan.orca.model.Lancamento;

public interface LancamentoDAO {
	
	public void insere(Lancamento lancamento);

	public void atualiza(Lancamento lancamento);

	public List<Lancamento> lista();

	public Lancamento getById(long id);

	public void remove(long id);

}
