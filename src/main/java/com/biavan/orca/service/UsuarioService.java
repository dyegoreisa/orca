package com.biavan.orca.service;

import java.util.List;

import com.biavan.orca.model.Organizacao;
import com.biavan.orca.model.Usuario;

public interface UsuarioService {

	public void insereUsuario(Usuario usuario);

	public void atualizaUsuario(Usuario usuario);
	
	public void atualizaUsuario(Usuario usuario, String senha);

	public List<Usuario> listaUsuarios();
	
	public Usuario getUsuarioByLogin(String login);

	public void removeUsuario(String login);
	
}
