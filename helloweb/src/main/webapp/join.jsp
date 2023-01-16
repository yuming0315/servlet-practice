<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String email = request.getParameter("email");
    String pw = request.getParameter("pw");
    String birthYear = request.getParameter("birthYear");
    String gender = request.getParameter("gender");
    String profile = request.getParameter("profile");
    String[] hobby = request.getParameterValues("hobby");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=email %>
	<br>
	<%=pw %>
	<br>
	<%=birthYear %>
	<br>
	<%=gender %>
	<p>
	<%=profile.replaceAll("\n","<br>") %>
	</p>
	
	<%for(int i=0;i<hobby.length;i++){ %>
	<h4><%=hobby[i] %></h4>
	<% } %>
</body>
</html>