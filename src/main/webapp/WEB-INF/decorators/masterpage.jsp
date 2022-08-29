<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>
<sitemesh:write property='title'/>
</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/css/navbar.css" />
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/masterpage.css" /> --%>	
<%-- <script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/resources/js/masterpage.js"></script> --%>
<sitemesh:write property='head'/>
</head>
<body>
<%@include file="/WEB-INF/views/includes/navbar.jsp" %>
<br>
<sitemesh:write property='body'/>
</body>
</html>