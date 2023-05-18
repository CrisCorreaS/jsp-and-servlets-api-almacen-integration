<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="language"
    value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}"
    scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="bundle.language" />

		
<mt:wrapper titulo="Home">

	<jsp:attribute name="content">
	
	<jsp:include page="cabecera.jsp" flush="true"><jsp:param name="etiquetaTitulo" value="Home"/></jsp:include>
		<!-- Slides -->
			<img class="slides" src="./img/img_la.jpg" alt="The Band1" style="width:100%">
			<img class="slides" src="./img/img_ch.jpg" alt="The Band2" width="100%">
			<img class="slides" src="./img/img_ny.jpg" alt="The Band3" width="100%">
			<script>
				w3.slideshow(".slides", 1500);
			</script>
		<!-- About -->
		<div id="about" class="w3-container w3-padding-32">
			<h1 class="w3-center"><fmt:message key="theBand"/></h1>
			<p><fmt:message key="bandWebIntro"/></p>
		</div>

	</jsp:attribute>
</mt:wrapper>
		