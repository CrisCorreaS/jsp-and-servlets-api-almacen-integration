<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="language"
    value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}"
    scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="bundle.language" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cabecera</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://www.w3schools.com/lib/w3.js"></script>
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
		<!-- <h1><%=request.getParameter("etiquetaTitulo")%></h1>
		<h2>${param.etiquetaTitulo}</h2> 
		<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">${param.etiquetaTitulo}</h3>-->
</body>
</html>