<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<c:set var="userLogin"><sec:authentication property="principal.username" /></c:set>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<c:url value="/home"/>">
        	<img src="<c:url value="/resources/imagens/logo_brend.png"/>" height="33px">
        </a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right espaco-topo">
        <li>${userLogin }</li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="<c:url value="/funcionario/perfil/${userLogin }"/>"><i class="fa fa-user fa-fw"></i> Perfil</a>
                </li>
                <li><a href="<c:url value="/empresa/telaAtualizar"/>"><i class="fa fa-gear fa-fw"></i> Empresa</a>
                </li>
                <li class="divider"></li>
                <li><a href="javascript:formLogout()"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->
    <div style="display:none;">
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		<script>function formLogout() { document.getElementById("logoutForm").submit(); }</script>
	</div>
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li class="sidebar-search">
                    <div class="input-group custom-search-form">
                    	<form action="${requestScope['javax.servlet.forward.context_path']}/busca/pesquisar" method="GET">
                        <input type="number" name="palavra" class="form-control" placeholder="Busca..." data-toggle="tooltipbusca" data-placement="right" title="Informe o número do Orçamento ou da OS."/>
                        </form>
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    	</span>
                    </div>
                    <!-- /input-group -->
                </li>
                <li>
                    <a href="<c:url value="/home"/>"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
                <li>
                    <a href="<c:url value="/orcamento/telaInserir" />"><i class="fa fa-pencil fa-fw"></i> Novo orçamento</a>
                </li>
                <li>
                    <a href="<c:url value="/orcamento/listar" />"><i class="fa fa-list-alt fa-fw"></i> Listar orçamentos</a>
                </li>
                <li>
                    <a href="<c:url value="/ordemServico/listar" />"><i class="fa fa-stack-overflow fa-fw"></i> Listar OS</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-cubes fa-fw"></i> Almoxarifado<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<c:url value="/solicitacao/listar" />">Solicitações de Peças</a>
                        </li>
                        <li>
                            <a href="<c:url value="/solicitacao/listarPendentes" />">Solicitações Pendentes</a>
                        </li>
                        <li>
                            <a href="<c:url value="/pedido/listar" />">Pedidos de compra</a>
                        </li>
                        <li>
                            <a href="<c:url value="/pedido/telaEstoque" />">Entrada em estoque</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap fa-fw"></i> Cadastro<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<c:url value="/cliente/listar" />">Cliente</a>
                        </li>
                        <li>
                            <a href="<c:url value="/fornecedor/listar" />">Fornecedor</a>
                        </li>
                        <li>
                            <a href="<c:url value="/funcionario/listar" />">Funcionarios</a>
                        </li>
                        <li>
		                    <a href="#"><i class="fa fa-wrench fa-fw"></i> Serviços/Peças<span class="fa arrow"></span></a>
		                    <ul class="nav nav-third-level">
		                        <li>
		                            <a href="<c:url value="/peca/listar" />">Peças</a>
		                        </li>
		                        <li>
		                            <a href="<c:url value="/servico/listar" />">Serviços</a>
		                        </li>
		                    </ul>
		                    <!-- /.nav-second-level -->
		                </li>
		                <li>
		                    <a href="#"><i class="fa fa-plus-square fa-fw"></i> Adicional<span class="fa arrow"></span></a>
		                    <ul class="nav nav-third-level">
		                        <li>
		                            <a href="<c:url value="/marca/listar" />">Marca da Peça</a>
		                        </li>
		                        <li>
		                            <a href="<c:url value="/veiculo/listar" />">Veículos</a>
		                        </li>
		                    </ul>
		                    <!-- /.nav-second-level -->
		                </li>
		                <li>
		                    <a href="#"><i class="fa fa-files-o fa-fw"></i> Tipos<span class="fa arrow"></span></a>
		                    <ul class="nav nav-third-level">
		                        <li>
		                            <a href="<c:url value="/tipoDocumento/listar" />">Tipo de Documento</a>
		                        </li>
		                        <li>
		                            <a href="<c:url value="/tipoFuncionario/listar" />">Tipo Funcionário</a>
		                        </li>
		                        <li>
		                            <a href="<c:url value="/tipoMotor/listar" />">Tipo Motor</a>
		                        </li>
		                        <li>
		                            <a href="<c:url value="/tipoServico/listar" />">Tipo Serviço</a>
		                        </li>
		                    </ul>
		                    <!-- /.nav-second-level -->
		                </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Relatorios<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<c:url value="/relatorio/estoque" />">Estoque peças</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-gear fa-fw"></i> Administração<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<c:url value="/perfil/listar" />">Perfis</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>
<script type="text/javascript">
	$(document).ready(function(){
		$('[data-toggle="tooltipbusca"]').tooltip();
	});
</script>