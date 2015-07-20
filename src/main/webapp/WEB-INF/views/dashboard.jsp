<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">

	<fmt:setLocale value="pt_BR"/>

	<div class="row">
	    <div class="col-lg-12">
	        <h1 class="page-header">Principal</h1>
	    </div>
	    <!-- /.col-lg-12 -->
	</div>
	
    </tiles:putAttribute>
</tiles:insertDefinition>