<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>

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
<title>Listado Clientes</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<style>
		tr:nth-child(even) {
  			background-color: #f2f2f2;
		}
		
		table, th, td {
  			border: 1px solid black;
  			border-collapse: collapse;
		}
	</style>
</head>
<body>
	<!-- Start Content -->
	<jsp:include page="cabecera.jsp" flush="true"><jsp:param name="etiquetaTitulo" value="listaClientes"/></jsp:include>
	
	<div id="listClientes" class="w3-content">
	<div id="contact" class="w3-container w3-padding-top-32">
	<h2 class="w3-border-bottom w3-border-light-grey w3-padding-16">Lista de Clientes</h2>
	
	<table>
		<thead>
			<tr>
				<th>Id Cliente</th>
				<th>Nombre</th>
				<th>Primer Apellido</th>
				<th>Segundo Apellido</th>
				<th>DNI</th>
				<th>Teléfono</th>
				<th>Editar</th>
				<th>Borrar</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${LClientes}">
					<tr>
						<td>${item.idCliente}</td>
						<td>${item.nombre}</td>
						<td>${item.apellido1}</td>
						<c:choose>
							<c:when test="${empty item.apellido2}">
								<td> - - - </td>
							</c:when>
							<c:otherwise>
								<td>${item.apellido2}</td>
							</c:otherwise>
						</c:choose>
						<td>${item.nif}</td>
						<td>${item.telefono}</td>
						<td></td>
						<td></td>	
					<tr>				
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
	<br/>
	<ul>
		<c:forEach var="item" items="${LClientes}" varStatus="loop" >
			<li>${item}</li>
		</c:forEach>
	</ul>
	<br/>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	</div>
</body>
</html>