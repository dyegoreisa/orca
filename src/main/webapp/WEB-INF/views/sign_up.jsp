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
						<header class="major">
							<h2>Todos nós precisamos manter<br />
							 o controle sobre as finanças.</h2>
						</header>
						<p>Orca é uma ferramenta que vai te ajudar a planejar sua vida financeira rumo ao sucesso. <br/>Vislumbre os recursos simples de usar mas poderosos nos resultados</p>
						<ul class="actions">
							<li><a href="#" class="button">Acesse agora!</a></li>
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
						<p>Ainda não está seguro em usar o Orca. Entre em contato e tire todas as suas dúvidas.</p>
						<div class="row">
							<div class="8u 12u$(small)">
								<form method="post" action="<c:url value="/contato"/>">
									<div class="row uniform 50%">
										<div class="6u 12u$(xsmall)"><input type="text" name="name" id="name" placeholder="Nome" /></div>
										<div class="6u$ 12u$(xsmall)"><input type="email" name="email" id="email" placeholder="E-mail" /></div>
										<div class="12u$"><textarea name="message" id="message" placeholder="Mensagem" rows="4"></textarea></div>
									</div>
								<ul class="actions">
									<li><input type="submit" value="Enviar" /></li>
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
	 
 
    </tiles:putAttribute>
</tiles:insertDefinition>