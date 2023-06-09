package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/banana") //클라이언트에서 특정 단어로 요청이 오면 이 클래스로 진입

public class DemoServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	//get, post메서드를 오버라이드
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/plain; charset=UTF-8;");
		PrintWriter out = resp.getWriter();
		//컨텐츠타입, 인코딩타입 - response객체에서
		out.println("hello world");
		out.println("<b>헬로월드</b>");
		
//		super.doGet(req, resp);
	}
	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
	
	
	
}
