package com.biavan.orca.service;

import java.util.List;
import java.util.Map;

import com.biavan.orca.model.Lancamento;

public interface LancamentoService {
	
	public void insereLancamento(Lancamento lancamento);

	public void atualizaLancamento(Lancamento lancamento);

	public List<Lancamento> listaLancamentos();
	
	public Lancamento getLancamentoById(long id);

	public void removeLancamento(long id);

	public Map<Long, String> listaLancamentoForDropDown();

}
