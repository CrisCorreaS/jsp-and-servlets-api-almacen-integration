<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>
	
<mt:wrapper titulo="ListClientes">

	<jsp:attribute name="css">
		<style>
			tr:nth-child(even) {
  				background-color: #f2f2f2;
			}
		
			table, th, td {
  				border: 1px solid black;
  				border-collapse: collapse;
			}
		</style>
	</jsp:attribute>
	
	<jsp:attribute name="content">
	<jsp:include page="cabecera.jsp" flush="true"><jsp:param name="etiquetaTitulo" value="Lista de Fans"/></jsp:include>
		
		<table>
		<thead>
			<tr>
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
			<c:forEach var="items" items="${LClientes}" varStatus="loop" >
				<li>${items}</li>
			</c:forEach>
		</ul>
		<br/>

	</jsp:attribute>
</mt:wrapper>
