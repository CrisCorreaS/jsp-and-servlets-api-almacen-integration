<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Inscripcion</title>
	<style>
		input:valid, textarea:valid {
    		background: rgba(124,252,0,0.3);
		}
		
		input:invalid, textarea:invalid {
    		background: rgba(255,0,0,0.3);
		}
	</style>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<!-- Start Content -->
	<jsp:include page="cabecera.jsp" flush="true"></jsp:include>
	
	<div id="home" class="w3-content">
		
	<!-- Contact Section -->
		<div id="contact" class="w3-container w3-padding-top-32">

			<h2 class="w3-border-bottom w3-border-light-grey w3-padding-16">Inscripción</h2>
			<p>Lets get in touch and talk about your next project</p>

			<form action="formInscripcion.jsp">
				<input class="w3-input w3-border" type="text" placeholder="Nombre" name="nombre" required pattern="[A-Za-z]{2,250}">
				<input class="w3-input w3-section w3-border" type="text" placeholder="Primer Apellido" name="apellido1" required pattern="[A-Za-z]{2,250}">
				<input class="w3-input w3-section w3-border" type="text" placeholder="Segundo Apellido" name="apellido2" pattern="[A-Za-z]{2,250}">
				<input class="w3-input w3-section w3-border" type="text" placeholder="DNI" name="dni" required pattern="[0-9]{8}[A-Za-z]{1}">
				<input class="w3-input w3-section w3-border" type="text" placeholder="Teléfono" name="telefono" required pattern="[A-Za-z0-9]{9,12}">
				<button class="w3-button w3-black w3-section" type="submit">
					<i class="fa fa-paper-plane"></i> Inscripción
				</button>
			</form>

			<img src="./img/img_ny.jpg" class="w3-image" style="width:100%">

	<!--Footer-->
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
		
	</div>
</body>
</html>