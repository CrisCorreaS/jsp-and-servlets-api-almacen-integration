<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div id="home" class="w3-content">
	<div id="contact" class="w3-container w3-padding-top-32">
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Descripción del Error</h3>
		<ul>
			<% 
				String[] attributes = {"ERROR_STATUS_CODE", "ERROR_EXCEPTION_TYPE", "ERROR_MESSAGE"};
				for (String attribute : attributes){
					out.println("<li>" + attribute + ": " + request.getAttribute(attribute) + "</li>");
				}
			%>
		</ul>
		<p><b>Código del error:</b> ${pageContext.errorData.statusCode}</p>
		<button onclick="history.back()" class="w3-button w3-black w3-section">Volver a la página anterior</button>
    	<a href="${pageContext.request.contextPath}/index.jsp" class="w3-button w3-black w3-section">Volver a la página de inicio</a>
	</div>
	</div>
</body>
</html>