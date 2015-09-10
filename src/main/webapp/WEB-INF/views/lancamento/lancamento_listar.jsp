<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

	<h1 class="page-header">Lançamento</h1>
	
	<fieldset>
	
	<!-- Form Name -->
	<legend>Listar</legend>
	
	<c:if test="${not empty sucesso}">
		<div class="alert alert-success" role="alert">${sucesso}</div>
	</c:if>
	
	
	</fieldset>

	</tiles:putAttribute>
</tiles:insertDefinition>