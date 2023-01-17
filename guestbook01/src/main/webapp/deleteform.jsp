<%@page import="guestbook01.dao.GuestBookDao"%>
<%@page import="guestbook01.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	GuestBookVo vo = new GuestBookVo();
	vo.setNo(Long.parseLong(request.getParameter("no")));
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
<script>
	function onDelete() {
		<%
			vo.setPassword(request.getParameter("password"));
			new GuestBookDao().delete(vo);
		%>
		document.location.href = "/guestbook01";
	}
</script>

</head>
<body>
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="button" value="확인" onclick="onDelete();"></td>
		</tr>
	</table>
	<a href="/guestbook01">메인으로 돌아가기</a>
</body>
</html>