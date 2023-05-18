<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Su comentario ha sido enviado correctamente</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div id="home" class="w3-content">
		<h3>Su comentario ha sido enviado <b style="color: green">CORRECTAMENTE</b></h3>
		<br/>
		<p>Muchas gracias por ponerse en contacto con nuestra banda, le responderemos lo antes posible.</p>
		<a href="${pageContext.request.contextPath}/index.jsp" class="w3-button w3-black w3-section">Volver a la página de inicio</a>
	</div>
</body>
</html>