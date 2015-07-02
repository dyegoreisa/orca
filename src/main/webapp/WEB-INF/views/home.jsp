<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">

	<fmt:setLocale value="pt_BR"/>

	<div class="row">
	    <div class="col-lg-12">
	        <h1 class="page-header">Dashboard</h1>
	    </div>
	    <!-- /.col-lg-12 -->
	</div>

	<div class="row">
	  <div class="col-sm-6 col-md-3">
	    <div class="thumbnail">
	      <div class="caption">
	        <h3>Status das OSs</h3>
	        <div id="canvas-holder">
				<canvas id="pie-chart" width="200" height="200"></canvas>
			</div>
	      </div>
	    </div>
	  </div>
	  <c:forEach items="${listaInfo }" var="item">
		  <div class="col-lg-3 col-md-6">
              <div class="panel ${item.corPainel}">
                  <div class="panel-heading">
                      <div class="row">
                          <div class="col-xs-3">
                              <i class="fa ${item.icone } fa-5x"></i>
                          </div>
                          <div class="col-xs-9 text-right">
                              <div class="huge"><fmt:formatNumber type="number" pattern="#### OSs" value="${item.qtdeByStatus}" /></div>
                              <div><fmt:formatNumber type="percent" maxIntegerDigits="3" minFractionDigits="1" value="${item.percentual / 100}" /> ${item.statusOS.text }</div>
                          </div>
                      </div>
                  </div>
                  <a href="<c:url value="/ordemServico/listar/${item.statusOS.text }" />">
                      <div class="panel-footer">
                          <span class="pull-left">Ir à listagem</span>
                          <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                          <div class="clearfix"></div>
                      </div>
                  </a>
              </div>
          </div>
	  </c:forEach>
	  <div class="col-sm-3 col-md-3">
	    <div class="thumbnail">
	      <div class="caption">
	      	<c:choose>
	      		<c:when test="${not empty isMecanico }">
		        	<h4>Minhas OSs</h4>
		        	<p><fmt:formatNumber type="number" pattern="#### OSs" value="${qtdeByMecanico}" /></p>
		        	<p><a href="<c:url value="/ordemServico/listar/mecanico/${mecanico.id }" />" class="btn btn-primary" role="button">Listar</a></p>
	      		</c:when>
	      		<c:otherwise>
	      		    <h4></h4>
		      		<p>&nbsp;</p>
			        <p>&nbsp;</p>
			        <p>&nbsp;</p>
	      		</c:otherwise>
	      	</c:choose>
	      </div>
	    </div>
	  </div>
	</div>
	
	<div class="row">
	  <div class="col-sm-6 col-md-4">
	    <div class="thumbnail">
	      <img src="<c:url value="/resources/imagens/img_complementares_orcamento2.jpg"/>" />
	      <div class="caption">
	        <h3>Novo Orçamento</h3>
	        <p><a href="<c:url value="/orcamento/telaInserir" />" class="btn btn-primary" role="button">Acessar</a></p>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-6 col-md-4">
	    <div class="thumbnail">
	      <img src="<c:url value="/resources/imagens/lista-orcamento2.jpg"/>" />
	      <div class="caption">
	        <h3>Lista de Orçamentos</h3>
	        <p><a href="<c:url value="/orcamento/listar" />" class="btn btn-primary" role="button">Acessar</a></p>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-6 col-md-4">
	    <div class="thumbnail">
	      <img src="<c:url value="/resources/imagens/pecas.jpg"/>" />
	      <div class="caption">
	        <h3>Solicitação de Peça</h3>
	        <p><a href="<c:url value="/solicitacao/listar" />" class="btn btn-primary" role="button">Acessar</a></p>
	      </div>
	    </div>
	  </div>
	</div>
	
	${renderJS }
	
    </tiles:putAttribute>
</tiles:insertDefinition>