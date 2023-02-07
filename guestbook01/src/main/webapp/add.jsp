<%@page import="com.douzone.mysite.dao.GuestBookDao"%>
<%@page import="com.douzone.mysite.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

	guestbookVo vo = new guestbookVo();
	vo.setName(request.getParameter("name"));
	vo.setPassword(request.getParameter("password"));
	vo.setMessage(request.getParameter("message"));
	
	new guestbookRepository().insert(vo);
	response.sendRedirect("/guestbook01");
%>