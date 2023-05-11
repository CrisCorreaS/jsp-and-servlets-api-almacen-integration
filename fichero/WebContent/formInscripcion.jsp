<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>
<%@ page import ="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-16">
<title>La inscripción ha sido aceptada</title>
</head>
<body>
	<h1>Su inscripción está siendo tramitada</h1>
	<br/><br/>
	El estudiante con nombre: ${param.nombre}
	<br/>
	Y apellidos: ${param.apellido1}

	<br/>
	Se ha inscrito <b>correctamente</b> en nuestro registro
</body>
</html>