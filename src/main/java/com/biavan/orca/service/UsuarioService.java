package com.biavan.orca.service;

import java.util.List;

import com.biavan.orca.model.Organizacao;
import com.biavan.orca.model.Usuario;

public interface UsuarioService {

	public boolean insereUsuario(Usuario usuario);

	public boolean atualizaUsuario(Usuario usuario);
	
	public void atualizaUsuario(Usuario usuario, String senha);

	public List<Usuario> listaUsuarios();
	
	public Usuario getUsuarioByLogin(String login);
	
	public Usuario getUsuarioById(long id);

	public void removeUsuario(String login);
	
}
