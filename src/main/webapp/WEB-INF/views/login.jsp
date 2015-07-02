<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="true"%>

<tiles:insertDefinition name="loginTemplate">
    <tiles:putAttribute name="body">
   	
	<c:if test="${not empty error}">
		<div class="alert alert-danger" role="alert">${error}</div>
	</c:if>
	<c:if test="${not empty msg}">
		<div class="alert alert-warning" role="alert">${msg}</div>
	</c:if>
	
	<div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Identificação</h3>
                    </div>
                    <div class="panel-body">
                        <form name="loginForm" action="<c:url value='/j_spring_security_check' />" method="POST" class="form-signin">
                            <fieldset>
                                <div class="form-group">
                                	<input type="text" id="login" name="login" class="form-control" placeholder="Login" required="required" autofocus/>
                                </div>
                                <div class="form-group">
                                	<input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required="required" />
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								<input name="submit" type="submit" class="btn btn-lg btn-success btn-block" value="Entrar" />
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
   	
    </tiles:putAttribute>
</tiles:insertDefinition>