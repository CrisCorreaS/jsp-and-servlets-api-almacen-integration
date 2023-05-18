<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>

		
<mt:wrapper titulo="Inscribirse">

	<jsp:attribute name="css">
		<style>
			input:valid, textarea:valid {
    			background: rgba(124,252,0,0.3);
			}
		
			input:invalid, textarea:invalid {
    			background: rgba(255,0,0,0.3);
			}
	</style>
	</jsp:attribute>
	
	<jsp:attribute name="content">
	<jsp:include page="cabecera.jsp" flush="true"><jsp:param name="etiquetaTitulo" value="Inscripción"/></jsp:include>
		
		<p>Inscríbete como nuevo fan de nuestra banda</p>

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

	</jsp:attribute>
</mt:wrapper>