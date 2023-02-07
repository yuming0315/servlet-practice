package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.mysite.vo.UserVo;

public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//값
		int iVal = 10;
		long lVal = 10;
		float fVal = 3.14f;
		boolean bVal = true;
		String sVal = "가나다라마바사";
		
		request.setAttribute("iVal", iVal);
		request.setAttribute("lVal", lVal);
		request.setAttribute("fVal", fVal);
		request.setAttribute("bVal", bVal);
		request.setAttribute("sVal", sVal);
		
		//객체
		Object obj = null;
		UserVo vo = new UserVo();
		vo.setNo(10L);
		vo.setName("둘리");
		vo.setEmail("dooly@naver.com");
		vo.setGender("male");
		
		request.setAttribute("obj", obj);
		request.setAttribute("userVo", vo);
		
		//map
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("iVal", iVal);
		map.put("fVal", fVal);
		map.put("sVal", sVal);
		
		request.setAttribute("m", map);
		
		request.getRequestDispatcher("/WEB-INF/views/01.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
