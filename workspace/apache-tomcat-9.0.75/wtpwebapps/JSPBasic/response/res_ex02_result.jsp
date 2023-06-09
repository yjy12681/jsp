<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    /*
    1. id, pw 를 받습니다
    2. id가 aaa123이고, pw가 1234라면 로그인 성공으로 간주하고 res_ex02_ok로 리다이렉트
    3. 아니라면 res_ex02_no 로 리다이렉트
    */
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    if(id.equals("aaa123") && pw.equals("1234")){
    	response.sendRedirect("res_ex02_ok.jsp");
    }else{
    	response.sendRedirect("res_ex02_no.jsp");
    }
    
    
    %>
    
    
   