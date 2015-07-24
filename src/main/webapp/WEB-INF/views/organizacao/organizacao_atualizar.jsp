<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

	<h1 class="page-header">Organização</h1>
	
	<c:url var="addAction" value="/organizacao/atualizar"></c:url>
	<form:form action="${addAction}" commandName="organizacao" class="form-horizontal">
	
	<fieldset>
	
	<!-- Form Name -->
	<legend>Atualizar</legend>
	
	<c:if test="${not empty sucesso}">
		<div class="alert alert-success" role="alert">${sucesso}</div>
	</c:if>
	
	<!-- Text input-->
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="nome">Nome</label>  
	  <div class="col-md-4">
	  <form:input path="nome" placeholder="Nome:" required="true" class="form-control input-md"/>  
	  </div>
	</div>

	<!-- Button -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for=""></label>
	  <div class="col-md-4">
	    <form:hidden path="id" />
	    <input class="btn btn-primary" type="submit" value="Salvar" />
	    <a class="btn btn-danger" href="${requestScope['javax.servlet.forward.context_path']}/dashboard" role="button">Cancelar</a>
	  </div>
	</div>
	
	</fieldset>
	</form:form>

	</tiles:putAttribute>
</tiles:insertDefinition>