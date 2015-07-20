package com.biavan.orca.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.biavan.orca.domain.TipoConta;

@Entity
@Table(name = "conta")
public class Conta implements Serializable{

	private static final long serialVersionUID = -1277589151163369811L;

	@Id
	@GeneratedValue
	private long id;
	
	@Column(unique = true)
	private String nome;
	
	@Column(name = "tipo_conta")
	private TipoConta tipoConta;
	
	@ManyToOne
	@JoinColumn(name = "organizacao_id", nullable = false)
	private Organizacao organizacao;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public TipoConta getTipoConta() {
		return tipoConta;
	}

	public void setTipoConta(TipoConta tipoConta) {
		this.tipoConta = tipoConta;
	}

	public Organizacao getOrganizacao() {
		return organizacao;
	}

	public void setOrganizacao(Organizacao organizacao) {
		this.organizacao = organizacao;
	}

}
