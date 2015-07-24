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
        <a class="navbar-brand" href="<c:url value="/home"/>">Orca - Planejamento Pessoal</a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right espaco-topo">
        <li>${usuario.nome }</li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="<c:url value="/usuario/telaAtualizar/${usuario.id }"/>"><i class="fa fa-user fa-fw"></i> Perfil</a>
                </li>
                <li><a href="<c:url value="/organizacao/telaAtualizar/${organizacao.id }"/>"><i class="fa fa-gear fa-fw"></i> Configuração</a>
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
                    </div>
                    <!-- /input-group -->
                </li>
                <li>
                    <a href="<c:url value="/dashboard"/>"><i class="fa fa-dashboard fa-fw"></i> Visão Geral</a>
                </li>
                <li>
                    <a href="<c:url value="/lancamento/telaInserir" />"><i class="fa fa-pencil fa-fw"></i> Novo lançamento</a>
                </li>
                <li>
                    <a href="<c:url value="/lancamento/listar" />"><i class="fa fa-list-alt fa-fw"></i> Lançamentos do mês</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-plus-square fa-fw"></i> Mais<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<c:url value="/categoria/listar" />"><i class="fa fa-tags fa-fw"></i> Categoria</a>
                        </li>
                        <li>
                            <a href="<c:url value="/conta/listar" />"><i class="fa fa-bank fa-fw"></i> Contas</a>
                        </li>
                        <li>
                            <a href="<c:url value="/usuario/listar" />"><i class="fa fa-users fa-fw"></i> Usuarios</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Relatorios<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<c:url value="/relatorio/despesasxreceitas" />"><i class="fa fa-print fa-fw"></i> Despesas x Receitas</a>
                        </li>
                        <li>
                            <a href="<c:url value="/relatorio/categorias" />"><i class="fa fa-print fa-fw"></i> Categorias</a>
                        </li>
                        <li>
                            <a href="<c:url value="/relatorio/contas" />"><i class="fa fa-print fa-fw"></i> Contas</a>
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