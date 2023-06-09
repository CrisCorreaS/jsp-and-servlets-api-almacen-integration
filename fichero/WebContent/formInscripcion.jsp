<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>La inscripción ha sido aceptada</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div id="home" class="w3-content">
		<h1>Su inscripción está siendo tramitada</h1>
		<br/>
		<p>El estudiante con nombre: <b>${param.nombre}</b></p>
		<p>Y apellido: <b>${param.apellido1}</b></p>
		<p>Se ha inscrito <b style="color: green">CORRECTAMENTE</b> en nuestro registro</p>
		<a href="${pageContext.request.contextPath}/index.jsp" class="w3-button w3-black w3-section">Volver a la página de inicio</a>
	</div>
</body>
</html>