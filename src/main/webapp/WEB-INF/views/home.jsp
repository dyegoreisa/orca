<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
 
<tiles:insertDefinition name="signUpTemplate">
    <tiles:putAttribute name="body">
			
		<!-- Header -->
			<header id="header">
				<a href="#" class="image avatar"><img src="<c:url value="/resources/strata/images/avatar.jpg" />" alt="" /></a>
				<h1><strong>Orca</strong>, uma ferramenta<br />
				simples e poderosa de controle<br />
				financeiro pessoal.</h1>
			</header>

		<!-- Main -->
			<div id="main">

				<!-- One -->
					<section id="one">
						<ul class="icons pull-right">
							<li><a href="#" class="icon fa-sign-in fa-2" data-toggle="modal" data-target="#loginUsuario">
								&nbsp;&nbsp;Acessar<span class="label"></span>
							</a></li>
						</ul>
						<br/><br/><br/>
						<header class="major">
							<h2>Todos nós precisamos manter<br />
							 o controle sobre as finanças.</h2>
						</header>
						<p>Orca é uma ferramenta que vai te ajudar a planejar sua vida financeira rumo ao sucesso. <br/>
						Vislumbre os recursos simples de usar, mas poderosos nos resultados</p>
						<ul class="actions">
							<li>
								<button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#novoUsuario">
								  Cadastre-se agora!
								</button>
							</li>
						</ul>
					</section>

				<!-- Two -->
					<section id="two">
						<h2>Algumas ferramentas</h2>
						<div class="row">
							<article class="6u 12u$(xsmall) work-item">
								<a href="<c:url value="/resources/strata/images/fulls/01.jpg"/>" class="image fit thumb"><img src="<c:url value="/resources/strata/images/thumbs/01.jpg"/>" alt="" /></a>
								<h3>Magna sed consequat tempus</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</article>
							<article class="6u$ 12u$(xsmall) work-item">
								<a href="<c:url value="/resources/strata/images/fulls/02.jpg"/>" class="image fit thumb"><img src="<c:url value="/resources/strata/images/thumbs/02.jpg"/>" alt="" /></a>
								<h3>Ultricies lacinia interdum</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</article>
							<article class="6u 12u$(xsmall) work-item">
								<a href="<c:url value="/resources/strata/images/fulls/03.jpg"/>" class="image fit thumb"><img src="<c:url value="/resources/strata/images/thumbs/03.jpg"/>" alt="" /></a>
								<h3>Tortor metus commodo</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</article>
							<article class="6u$ 12u$(xsmall) work-item">
								<a href="<c:url value="/resources/strata/images/fulls/04.jpg"/>" class="image fit thumb"><img src="<c:url value="/resources/strata/images/thumbs/04.jpg"/>" alt="" /></a>
								<h3>Quam neque phasellus</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</article>
							<article class="6u 12u$(xsmall) work-item">
								<a href="<c:url value="/resources/strata/images/fulls/05.jpg"/>" class="image fit thumb"><img src="<c:url value="/resources/strata/images/thumbs/05.jpg"/>" alt="" /></a>
								<h3>Nunc enim commodo aliquet</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</article>
							<article class="6u$ 12u$(xsmall) work-item">
								<a href="<c:url value="/resources/strata/images/fulls/06.jpg"/>" class="image fit thumb"><img src="<c:url value="/resources/strata/images/thumbs/06.jpg"/>" alt="" /></a>
								<h3>Risus ornare lacinia</h3>
								<p>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</p>
							</article>
						</div>
					</section>

				<!-- Three -->
					<section id="three">
						<h2>Entre em contato</h2>
						<p>Ainda não está seguro em usar o Orca? <br/>
						Entre em contato e tire todas as suas dúvidas.</p>
						<div class="row">
							<div class="8u 12u$(small)" id="contato">
								<form method="post" action="<c:url value="/contato"/>" id="frm-contato">
									<div class="row uniform 50%">
										<div class="6u 12u$(xsmall)"><input type="text" name="name" id="name" placeholder="Nome" /></div>
										<div class="6u$ 12u$(xsmall)"><input type="email" name="email" id="email" placeholder="E-mail" /></div>
										<div class="12u$"><textarea name="message" id="message" placeholder="Mensagem" rows="4"></textarea></div>
									</div>
								<ul class="actions">
									<li><input type="submit" value="Enviar" role="button" /></li>
								</ul>
								</form>
							</div>
							<div class="4u$ 12u$(small)">
								<ul class="labeled-icons">
									<li>
										<h3 class="icon fa-home"><span class="label">Endereço</span></h3>
										Est. Barro Vermelho, 600.<br />
										Rocha Miranda, RJ<br />
										Brasil
									</li>
									<li>
										<h3 class="icon fa-mobile"><span class="label">Phone</span></h3>
										000-000-0000
									</li>
									<li>
										<h3 class="icon fa-envelope-o"><span class="label">E-mail</span></h3>
										<a href="#">contato@orca.com</a>
									</li>
								</ul>
							</div>
						</div>
					</section>

			</div>

		<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
					<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
					<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Orca</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</footer>
			
			
			<!-- Modal -->
			<form class="form-horizontal" action="organizacao/novoUsuario" method="post" id="frmNovoUsuario">
			<div class="modal fade" id="novoUsuario" tabindex="-1" role="dialog" aria-labelledby="novoUsuarioLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="novoUsuarioLabel">Bem Vindo</h4>
			      </div>
			      <div class="modal-body">
			      
			      	<c:if test="${not empty duplicado }">
						<div class="alert alert-danger" role="alert">${duplicado }</div>
					</c:if>
			      
			        <h3>É importante que forneça alguns dados para continuarmos.</h3>

					<!-- Text input-->
					<div class="form-group" id="div-nome">
					  <label class="col-md-4 control-label" for="cadastro-nome">Nome:</label>  
					  <div class="col-md-4">
						<span id="error-nome" class="label label-danger sr-only"></span>
					  	<input id="cadastro-nome" name="nome" type="text" placeholder="Nome" class="form-control input-md" required="required">
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group" id="div-email">
					  <label class="col-md-4 control-label" for="cadastro-email">E-mail:</label>  
					  <div class="col-md-4">
					  <span id="error-email" class="label label-danger sr-only"></span>
					  <input id="cadastro-email" name="email" type="email" placeholder="E-mail" class="form-control input-md" required="required">
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group" id="div-senha">
					  <label class="col-md-4 control-label" for="cadastro-senha">Senha:</label>  
					  <div class="col-md-4">
					  <span id="error-senha" class="label label-danger sr-only"></span>
					  <input id="cadastro-senha" name="senha" type="password" class="form-control input-md" required="required">
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group" id="div-confirma">
					  <label class="col-md-4 control-label" for="cadastro-confirma">Confirmar:</label>  
					  <div class="col-md-4">
					  <span id="error-confirma" class="label label-danger sr-only"></span>
					  <input id="cadastro-confirma" name="confirma" type="password" class="form-control input-md" required="required">
					  </div>
					</div>
					
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
			        <button type="button" class="btn btn-primary" id="btnEntrar">Cadastrar</button>
			      </div>
			    </div>
			  </div>
			</div>
			</form>
			
			<!-- Modal -->
			<form name="loginForm" class="form-horizontal" action="<c:url value='/j_spring_security_check' />" method="POST" class="form-signin">
			<div class="modal fade" id="loginUsuario" tabindex="-1" role="dialog" aria-labelledby="loginUsuarioLabel">
			  <div class="modal-dialog modal-sm" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="novoUsuarioLabel">Identificação</h4>
			      </div>
			      <div class="modal-body">
					
					<c:if test="${error ne null }">
						<div class="alert alert-danger" role="alert">${error }</div>
					</c:if>
					
					<c:if test="${not empty emailAlterado }">
						<div class="alert alert-warning" role="alert">${emailAlterado }</div>
					</c:if>
					
					<!-- Text input-->
					<div class="form-group" id="div-email">
					  <label class="col-md-2 control-label" for="login-email">E-mail:</label>  
					  <div class="col-md-10">
					  <input id="login-email" name="email" type="email" placeholder="E-mail" class="form-control input-md" required="required">
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group" id="div-senha">
					  <label class="col-md-2 control-label" for="login-senha">Senha:</label>  
					  <div class="col-md-10">
					  <input id="login-senha" name="senha" type="password" class="form-control input-md" required="required">
					  </div>
					</div>
					
			      </div>
			      <div class="modal-footer">
			      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
			        <button type="submit" class="btn btn-primary">Entrar</button>
			      </div>
			    </div>
			  </div>
			</div>
			</form>
	
<c:if test="${telaLogin eq true }">		
<script type="text/javascript">
$(document).ready(function() {
	$( "#loginUsuario" ).modal();
});
</script>
</c:if>

<c:if test="${not empty duplicado }">		
<script type="text/javascript">
$(document).ready(function() {
	$( "#novoUsuario" ).modal();
});
</script>
</c:if>

			
<script type="text/javascript">
$(document).ready(function() {
	
	function isValidEmailAddress(emailAddress) {
	    var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
	    return pattern.test(emailAddress);
	};
	
	$( "#frm-contato" ).submit(function( event ) {
	 
		// Stop form from submitting normally
		event.preventDefault();
		
		// Send the data using post
		var posting = $.post( $( this ).attr( "action" ), $( this ).serialize() );
		
		// Put the results in a div
		posting.done(function( data ) {
		 	$( "#contato" ).empty().append( data );
		});
	});
	
	$( "#btnEntrar" ).on( "click", function() {
		$( "#div-nome" ).removeClass( "has-error" );
		$( "#div-email" ).removeClass( "has-error" );
		$( "#div-senha" ).removeClass( "has-error" );
		$( "#div-confirma" ).removeClass( "has-error" );
		$( "#error-nome" ).addClass( "sr-only" );
		$( "#error-email" ).addClass( "sr-only" );
		$( "#error-senha" ).addClass( "sr-only" );
		$( "#error-confirma" ).addClass( "sr-only" );
		
		var nome = $( "#cadastro-nome" ).val();
		var email = $( "#cadastro-email" ).val();
		var senha = $( "#cadastro-senha" ).val();
		var confirma = $( "#cadastro-confirma" ).val();
		var error = 0;

		if (nome == "") {
			$( "#div-nome" ).addClass( "has-error" );
			$( "#error-nome" ).removeClass( "sr-only" );
			$( "#error-nome" ).html("Campo vazio!");
			error++;
		}
		
		if (email == "") {
			$( "#div-email" ).addClass( "has-error" );
			$( "#error-email" ).removeClass( "sr-only" );
			$( "#error-email" ).html("Campo vazio!");
			error++;
		}
		
		if ( !isValidEmailAddress( email ) ) {
			$( "#div-email" ).addClass( "has-error" );
			$( "#error-email" ).removeClass( "sr-only" );
			$( "#error-email" ).html("E-mail inválido!");
			error++;
		}
		
		if (senha == "") {
			$( "#div-senha" ).addClass( "has-error" );
			$( "#error-senha" ).removeClass( "sr-only" );
			$( "#error-senha" ).html("Campo vazio!");
			error++;
		}
		
		if (confirma == "") {
			$( "#div-confirma" ).addClass( "has-error" );
			$( "#error-confirma" ).removeClass( "sr-only" );
			$( "#error-confirma" ).html("Campo vazio!");
			error++;
		}
		
		if (confirma != senha) {
			$( "#div-confirma" ).addClass( "has-error" );
			$( "#error-confirma" ).removeClass( "sr-only" );
			$( "#error-confirma" ).html("Está diferente do campo senha!");
			error++;
		}
		
		if (error == 0) {
			$( "#frmNovoUsuario" ).submit();
		}
	});
});
</script>
 
    </tiles:putAttribute>
</tiles:insertDefinition>