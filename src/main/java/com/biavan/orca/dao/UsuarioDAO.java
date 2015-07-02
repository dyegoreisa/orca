package com.biavan.orca.dao;

import java.util.List;

import com.biavan.orca.model.Usuario;

public interface UsuarioDAO {
	
	public void insere(Usuario usuario);

	public void atualiza(Usuario usuario);
	
	public List<Usuario> lista();

	public void remove(String login);
	
	public Usuario findByLogin(String login);
	
	public Usuario getById(long id);
	
}
