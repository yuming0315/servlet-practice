<%@page import="guestbook01.dao.GuestBookDao"%>
<%@page import="guestbook01.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	GuestBookVo vo = new GuestBookVo();
	vo.setName(request.getParameter("name"));
	vo.setPassword(request.getParameter("password"));
	vo.setMessage(request.getParameter("message"));
	
	new GuestBookDao().insert(vo);
	response.sendRedirect("/guestbook01");
%>