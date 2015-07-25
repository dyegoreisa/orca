<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

	<h1 class="page-header">Usuário</h1>
	
	<c:url var="addAction" value="/usuario/atualizar"></c:url>
	<form:form action="${addAction}" commandName="usuario" class="form-horizontal">
	
	<fieldset>
	
	<!-- Form Name -->
	<legend>Perfil</legend>
	
	<c:if test="${not empty sucesso}">
		<div class="alert alert-success" role="alert">${sucesso}</div>
	</c:if>
	<c:if test="${not empty duplicado}">
		<div class="alert alert-danger" role="alert">${duplicado}</div>
	</c:if>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label">Nome</label>  
	  <div class="col-md-6">
	  <div class="col-md-6"><p class="form-control-static">${usuario.nome}</p></div> 
	  </div>
	</div>
	
	<div class="form-group">
	  <label class="col-md-4 control-label">E-mail</label>  
	  <div class="col-md-6">
	  <div class="col-md-6"><p class="form-control-static">${usuario.login}</p></div> 
	  </div>
	</div>

	<!-- Button -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for=""></label>
	  <div class="col-md-4">
	    <form:hidden path="id" />
	    <a class="btn btn-info" href="${requestScope['javax.servlet.forward.context_path']}/usuario/telaAtualizar/${usuario.id}" role="button">Editar</a>
	  </div>
	</div>
	
	</fieldset>
	</form:form>

	</tiles:putAttribute>
</tiles:insertDefinition>