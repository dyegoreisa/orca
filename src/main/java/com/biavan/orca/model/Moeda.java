package com.biavan.orca.model;

import java.io.Serializable;

import javax.persistence.Id;

public class Moeda implements Serializable {

	private static final long serialVersionUID = 5136761590312570027L;

	@Id
	private String codigo;
	
	private String Descricao;

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return Descricao;
	}

	public void setDescricao(String descricao) {
		Descricao = descricao;
	}
	
	
}
