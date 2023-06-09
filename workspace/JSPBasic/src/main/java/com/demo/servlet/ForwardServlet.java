package com.demo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/apple")
public class ForwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ForwardServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("실행됨~~~~~");
		//3번페이지에서 필요한 값을 request에 저장
//		request.setAttribute("스트링(키)", "오브젝트(값)");
		
		
		//리다이렉트
		//response.sendRedirect("actionTag/forward_ex02_ok.jsp");
		
		//포워드
		//RequestDispatcher dp = request.getRequestDispatcher("actionTag/forward_ex02_ok.jsp");
		//dp.forward(request, response);
		
		request.getRequestDispatcher("actionTag/forward_ex02_ok.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
