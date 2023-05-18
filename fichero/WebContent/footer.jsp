<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Footer</title>
</head>
<body>
	<footer class="w3-center w3-black w3-panel w3-padding-16">
			<p><fmt:message key="footer"/> <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
		</footer>
</body>
</html>