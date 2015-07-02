<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:importAttribute name="signUpStylesheets"/>
<tiles:importAttribute name="signUpJavascripts"/>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>Orca - Planejamento Pessoal</title>
	<!-- stylesheets -->
	<c:forEach var="css" items="${signUpStylesheets}">
	    <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
	</c:forEach>
	<!-- end stylesheets -->	

	<!-- Javascripts -->
	<c:forEach var="script" items="${signUpJavascripts}">
		<script src="<c:url value="${script}"/>"></script>
	</c:forEach>
	<!-- end Javascripts -->
	
</head>
<body id="top">
	<tiles:insertAttribute name="body" />
</body>
</html>