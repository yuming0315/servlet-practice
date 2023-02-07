<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.color == 'red' }">
		<h1 style="color: red">hello world</h1>
		</c:when>
		<c:when test="${param.color == 'blue' }">
		<h1 style="color: blue">hello world</h1>
		</c:when>
		<c:when test="${param.color == 'green' }">
		<h1 style="color: green">hello world</h1>
		</c:when>
		<c:when test="${param.color == 'purple' }">
		<h1 style="color: purple">hello world</h1>
		</c:when>
		<c:otherwise>
		<h1>hello world</h1>
		</c:otherwise>
		</c:choose>
		
</body>
</html>