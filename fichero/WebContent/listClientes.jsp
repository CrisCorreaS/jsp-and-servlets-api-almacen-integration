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
/*
int m=5;
int x=2;
int resultadoDivision=m/x;

final String ROOT_FILE_PATH="C:\\jrep\\tmp\\listaFicheirosProbarApp";
File f=new File(ROOT_FILE_PATH);
File[] allSubFiles=f.listFiles();
pageContext.setAttribute("lFiles", allSubFiles);
*/
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listado App Ficheiros</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://www.w3schools.com/lib/w3.js"></script>
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
<br />&nbsp;
	<br />&nbsp;
	<table>
		<thead>
			<tr>
				<th>Files</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${lFiles}">
				<tr>
					<td>${item}</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tfoot>
	</table>
</body>
</html>