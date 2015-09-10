<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

	<h1 class="page-header">Lançamento</h1>
	
	<c:url var="addAction" value="/lancamento/atualizar"></c:url>
	<form:form action="${addAction}" commandName="lancamento" class="form-horizontal">
	
	<fieldset>
	
	<!-- Form Name -->
	<legend>${subTitulo }</legend>
	
	<c:if test="${not empty sucesso}">
		<div class="alert alert-success" role="alert">${sucesso}</div>
	</c:if>
	
	<div class="form-group" >
	  <label class="col-md-2 control-label" for="tipoOperacao">Tipo de Lancamento</label>
	  <div class="col-md-4 btn-group" role="group">
	    <p class="form-control-static">${lancamento.tipoOperacao }</p>
	  	<form:hidden path="tipoOperacao"/>
	  </div>

	  <label class="col-md-2 control-label" for="conta">Conta</label>
	  <div class="col-md-2 btn-group" role="group">
	  	<form:select path="conta">
		    <form:options items="${listaContas}" />
		</form:select>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-2 control-label" for="valorPrevisto">Valor</label>  
	  <div class="col-md-4">
	  	<form:input path="valorPrevisto" placeholder="Valor:" required="true" class="form-control input-md"/>  
	  </div>
	  
	  <label class="col-md-2 control-label" for="dataVencimento">Vencimento</label>  
	  <div class="col-md-4">
	  	<form:input path="dataVencimento" type="date" placeholder="Vencimento" required="true" class="form-control input-md"/>  
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-2 control-label" for="numeroDocumento">Número do documento</label>  
	  <div class="col-md-4">
	  	<form:input path="numeroDocumento" placeholder="Número do documento" class="form-control input-md"/> 
	  </div>

	  <label class="col-md-2 control-label" for="descricao">Descrição</label>
	  <div class="col-md-4">                     
	    <form:input path="descricao" placeholder="Descrição" class="form-control input-md"/>
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