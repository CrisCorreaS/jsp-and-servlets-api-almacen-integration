<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="language"
    value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}"
    scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="bundle.language" />

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
<title>${titulo}</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
		<div class="w3-top w3-bar w3-black">
			<a href="${pageContext.request.contextPath}/index.jsp" class="w3-bar-item w3-button"><fmt:message key="homepage"/></a>
			<a href="${pageContext.request.contextPath}/ListClientes" class="w3-bar-item w3-button"><fmt:message key="clientsList"/></a>
			<a href="${pageContext.request.contextPath}/listFiles.jsp" class="w3-bar-item w3-button"><fmt:message key="filesList"/></a>
			<a href="${pageContext.request.contextPath}/contacto.jsp" class="w3-bar-item w3-button"><fmt:message key="contact"/></a>
			<a href="${pageContext.request.contextPath}/inscribirse.jsp" class="w3-bar-item w3-button"><fmt:message key="saveClient"/></a>
			<form>
	        	<select id="language" name="language" onchange="submit()" class="w3-bar-item w3-button">
	            	<option value="ar" ${language == 'ar' ? 'selected' : ''}><fmt:message key="arabic"/></option>
	            	<option value="ar_DZ" ${language == 'ar_DZ' ? 'selected' : ''}><fmt:message key="argelianArabic"/></option>
	            	<option value="gl" ${language == 'gl' ? 'selected' : ''}><fmt:message key="galizian"/></option>
	            	<option value="en" ${language == 'en' ? 'selected' : ''}><fmt:message key="english"/></option>
	            	<option value="es" ${language == 'es' ? 'selected' : ''}><fmt:message key="spanish"/></option>            
	        	</select>&nbsp;&nbsp;&nbsp; <b ${(language == 'ar') ?'dir="rtl" align="right" lang="ar"':''} class="w3-bar-item w3-button"><fmt:message key="keyMsgi18n" /></b><!-- dir="rtl" lang="ar" -->
    		</form>
		</div>
		
		<div id="home" class="w3-content">
		<div id="contact" class="w3-container w3-padding-top-32">
	<jsp:include page="cabecera.jsp" flush="true"><jsp:param name="etiquetaTitulo" value="Lista de Archivos"/></jsp:include>
		
		<ul>
			<%for (File file : files){ %>
				<li><img src="./img//icono.png" alt="icon"/><p"><%=file.getName()%></p></li>
			<%}%>
		</ul>
		
		<br/>
		
	<footer class="w3-center w3-black w3-panel w3-padding-16">
				<p><fmt:message key="footer"/> <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
			</footer>
			<!-- End Content -->
		</div>
		</div>	
</body>
</html>