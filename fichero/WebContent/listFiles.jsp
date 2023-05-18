<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>
<!-- < uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> -->
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.lang.System" %>
<%@ page import="java.util.Vector" %>
<%
	String directoryPath = "C:\\Users\\ccorreas\\Desktop\\CarpetaServlet";
	File directory = new File(directoryPath);
	File[] files = directory.listFiles();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listado App Archivos</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	
</head>
<body>
	<!-- Start Content -->
	
	<jsp:include page="cabecera.jsp" flush="true"></jsp:include>
	<div id="listFiles" class="w3-content">
	<div id="contact" class="w3-container w3-padding-top-32">
	<h2 class="w3-border-bottom w3-border-light-grey w3-padding-16">Lista de Archivoss</h2>
		
	<ul>
		<%for (File file : files){ %>
			<li><img src="./img//icono.png" alt="icon"/><p"><%=file.getName()%></p></li>
		<%}%>
	</ul>
</body>
</html>