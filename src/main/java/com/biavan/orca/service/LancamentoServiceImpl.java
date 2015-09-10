package com.biavan.orca.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.biavan.orca.dao.LancamentoDAO;
import com.biavan.orca.model.Lancamento;

@Service
public class LancamentoServiceImpl implements LancamentoService {
	
	private LancamentoDAO lancamentoDAO;
	
	public void setLancamentoDAO(LancamentoDAO lancamentoDAO) {
		this.lancamentoDAO = lancamentoDAO;
	}

	@Override
	@Transactional
	public void insereLancamento(Lancamento lancamento) {
		this.lancamentoDAO.insere(lancamento);
		
	}

	@Override
	@Transactional
	public void atualizaLancamento(Lancamento lancamento) {
		this.lancamentoDAO.atualiza(lancamento);
		
	}

	@Override
	@Transactional
	public List<Lancamento> listaLancamentos() {
		List<Lancamento> lancamentos = new ArrayList<Lancamento>();
		for(Lancamento p : lancamentoDAO.lista()) {
			lancamentos.add(p);
		}
		return lancamentos;
	}
	
	@Override
	@Transactional
	public Lancamento getLancamentoById(long id) {
		Lancamento lancamento = lancamentoDAO.getById(id);
		return lancamento;
		
	}

	@Override
	@Transactional
	public void removeLancamento(long id) {
		this.lancamentoDAO.remove(id);
		
	}
	
	@Override
	@Transactional
	public Map<Long, String> listaLancamentoForDropDown() {
		Map<Long, String> listaLancamentos = new LinkedHashMap<Long, String>();
		
		for (Lancamento p : this.lancamentoDAO.lista()) {
			listaLancamentos.put(p.getId(), p.getDescricao());
		}
		return listaLancamentos;
	}


}
