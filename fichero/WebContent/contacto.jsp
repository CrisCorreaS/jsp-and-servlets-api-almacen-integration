<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Contacto</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<!-- Start Content -->
		<div id="home" class="w3-content">
	
		<!-- Navigation (Stays on Top) -->
		<div class="w3-top w3-bar w3-black">
			<a href="${pageContext.request.contextPath}/index.jsp" class="w3-bar-item w3-button">Home</a>
			<a href="${pageContext.request.contextPath}/ListClientes" class="w3-bar-item w3-button">Lista de clientes</a>
			<a href="${pageContext.request.contextPath}/ListFiles" class="w3-bar-item w3-button">Lista de archivos</a>
			<a href="${pageContext.request.contextPath}/contacto.jsp" class="w3-bar-item w3-button">Contacto</a>
			<a href="${pageContext.request.contextPath}/inscribirse.jsp" class="w3-bar-item w3-button">Inscripcion</a>
		</div>
		
	<!-- Contact Section -->
		<div id="contact" class="w3-container w3-padding-top-32">

			<h2 class="w3-border-bottom w3-border-light-grey w3-padding-16">Contacto</h2>
			<p>Lets get in touch and talk about your next project</p>

			<form action="/action_page.jsp" target="_blank">
				<input class="w3-input w3-border" type="text" placeholder="Nombre" required name="Nombre">
				<input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
				<input class="w3-input w3-section w3-border" type="text" placeholder="Comentario" required name="Comentario">
				<button class="w3-button w3-black w3-section" type="submit">
					<i class="fa fa-paper-plane"></i> Enviar
				</button>
			</form>

			<img src="./img/map.jpg" class="w3-image" style="width:100%">

	<!--Footer-->
		<footer class="w3-center w3-black w3-panel w3-padding-16">
			<p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
		</footer>
	</div>
</body>
</html>