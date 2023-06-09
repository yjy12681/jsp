<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String path = request.getContextPath();
    StringBuffer url = request.getRequestURL();
    String uri = request.getRequestURI();
    String remote = request.getRemoteAddr();
    
    String header = request.getHeader("contentTpye");  //헤더정보값
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	컨택스트패스:<%= path %><br> <!-- 프로젝트식별주소 -->
	유알엘: <%= url %><br> <!-- 보여지는 전체주소 -->
	유알아이: <%= uri %><br> <!-- 포트번호를 뺀 전체주소 -->
	접속한주소: <%= remote %><br> <!--  접속한 ip 주소 -->
	요청에대한문서타입: <%=header %><br> <!-- 들어있는 값을 반환해줌 -->
	
	
</body>
</html>