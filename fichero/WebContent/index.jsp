<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-16"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="language"
    value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}"
    scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="LocalStrings" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-16">
	<title>Página de Inicio</title>
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body>
	<!-- Start Content -->
		<div id="home" class="w3-content">
		<div id="contact" class="w3-container w3-padding-top-32">
		<h2 class="w3-border-bottom w3-border-light-grey w3-padding-16">Bienvenidos</h2>
	
		<!-- Navigation (Stays on Top) -->
		<div class="w3-top w3-bar w3-black">
			<a href="${pageContext.request.contextPath}/index.jsp" class="w3-bar-item w3-button">Home</a>
			<a href="${pageContext.request.contextPath}/ListClientes" class="w3-bar-item w3-button">Lista de clientes</a>
			<a href="${pageContext.request.contextPath}/ListFiles" class="w3-bar-item w3-button">Lista de archivos</a>
			<a href="${pageContext.request.contextPath}/contacto.jsp" class="w3-bar-item w3-button">Contacto</a>
			<a href="${pageContext.request.contextPath}/inscribirse.jsp" class="w3-bar-item w3-button">Inscripcion</a>
			<form>
			<fmt:setBundle basename="bundle.fichero" />
        		<select id="language" name="language" onchange="submit()" class="w3-bar-item w3-button">
            		<option value="ar" ${language == 'ar' ? 'selected' : ''}>Árabe</option>
            		<option value="ar_DZ" ${language == 'ar_DZ' ? 'selected' : ''}>Árabe Argelia</option>
            		<option value="gl" ${language == 'gl' ? 'selected' : ''}>Galego</option>
            		<option value="en" ${language == 'en' ? 'selected' : ''}>Inglés</option>
            		<option value="es" ${language == 'es' ? 'selected' : ''}>Español</option>            
        		</select>&nbsp;&nbsp;&nbsp; <b ${(language == 'ar') ?'dir="rtl" align="right" lang="ar"':''}><fmt:message key="keyMsgInternacionalizado" /></b><!-- dir="rtl" lang="ar" -->
    		</form>
		</div>

		<!-- Slides -->
			<img class="slides" src="./img/img_la.jpg" alt="The Band1" style="width:100%">
			<img class="slides" src="./img/img_ch.jpg" alt="The Band2" width="100%">
			<img class="slides" src="./img/img_ny.jpg" alt="The Band3" width="100%">
			<script>
				w3.slideshow(".slides", 1500);
			</script>
		<!-- About -->
		<div id="about" class="w3-container w3-padding-32">
			<h1 class="w3-center">The Band</h1>
			<p>This is our band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		</div>
		
		<!--Footer-->
		<footer class="w3-center w3-black w3-panel w3-padding-16">
			<p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
		</footer>

	<!-- End Content -->
	</div>
</body>
</html>