<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    String[] inter = request.getParameterValues("inter");
    
    String[] major = request.getParameterValues("major");
    
    String region = request.getParameter("region");
    
    String hello = request.getParameter("hello");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a>회원가입성공</a><br>
	
	아이디:<%= id %><br>
	비밀번호:<%= pw %><br>
	관심분야:<%= Arrays.toString(inter) %><br>
	전공분야:<%= Arrays.toString(major) %><br>
	지역:<%= region %><br>
	내소개:<%=hello %><br>

</body>
</html>