<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>

		
<mt:wrapper titulo="Contacto">

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
	<jsp:include page="cabecera.jsp" flush="true"><jsp:param name="etiquetaTitulo" value="Contacto"/></jsp:include>
		
		<p>Lets get in touch and talk about your next project</p>

			<form action="formContacto.jsp">
				<input class="w3-input w3-border" type="text" placeholder="Nombre" name="Nombre" pattern="[A-Za-z]{2,50}">
				<input class="w3-input w3-section w3-border" type="text" placeholder="Email" name="Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">
				<input class="w3-input w3-section w3-border" type="text" placeholder="Comentario de 150 caracteres" name="Comentario" required maxlength="150">
				<button class="w3-button w3-black w3-section" type="submit">
					<i class="fa fa-paper-plane"></i> Enviar
				</button>
			</form>

			<img src="./img/map.jpg" class="w3-image" style="width:100%">

	</jsp:attribute>
</mt:wrapper>
