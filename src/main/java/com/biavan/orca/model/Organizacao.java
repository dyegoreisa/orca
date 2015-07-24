package com.biavan.orca.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "organizacao")
public class Organizacao implements Serializable {

	private static final long serialVersionUID = -2982099755970719868L;

	@Id
	@GeneratedValue
	private long id;
	
	private String nome;
	
	@OneToMany(mappedBy = "organizacao")
	private List<Usuario> usuarios;

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

	public List<Usuario> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
	
	@Override
	public String toString() {
		return "Organizacao [id=" + id + ", nome=" + nome + "]";
	}


}
