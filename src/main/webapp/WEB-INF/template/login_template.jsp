<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:importAttribute name="loginStylesheets"/>
<tiles:importAttribute name="loginJavascripts"/>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>Brend - Login</title>
	<!-- stylesheets -->
	<c:forEach var="css" items="${loginStylesheets}">
	    <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
	</c:forEach>
	<!-- end stylesheets -->	
	
</head>
<body>
    <div class="container">
		<tiles:insertAttribute name="body" />
	</div> <!-- /container -->
	
	<!-- Javascripts -->
	<c:forEach var="script" items="${loginJavascripts}">
		<script src="<c:url value="${script}"/>"></script>
	</c:forEach>
	<!-- end Javascripts -->
</body>
</html>