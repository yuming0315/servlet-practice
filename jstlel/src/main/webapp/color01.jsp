<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String color = request.getParameter("color"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if("red".equals(color)) {%>
	<h1 style = 'color: red'>Hello World</h1>
	<h1 style = 'color: blue'>Hello World</h1>
	<h1 style = 'color: green'>Hello World</h1>
	<%} %>
</body>
</html>