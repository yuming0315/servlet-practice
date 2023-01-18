package com.douzone.guestbook02.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guestbook01.dao.GuestBookDao;
import guestbook01.vo.GuestBookVo;

public class GuestBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		if("deleteform".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			request.setAttribute("no", request.getParameter("no"));
			rd.forward(request, response);
		}else if("add".equals(action)) {
			GuestBookVo vo = new GuestBookVo();
			vo.setName(request.getParameter("name"));
			vo.setPassword(request.getParameter("password"));
			vo.setMessage(request.getParameter("message"));
			
			new GuestBookDao().insert(vo);
			response.sendRedirect(request.getContextPath()+"/gb");
		}else {
			List<GuestBookVo> list = new GuestBookDao().findAll();
			request.setAttribute("list", list);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
