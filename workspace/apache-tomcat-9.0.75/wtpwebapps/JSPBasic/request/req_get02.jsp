<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("id"); //태그의 네임값
	String pw = request.getParameter("pw");
	
	//input태그의 복수개  name값을 받을 때
	String[] agree = request.getParameterValues("agree");
	

%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>결과페이지</h3>
	아이디:<%=id %><br>
	비밀번호:<%=pw %><br>
	동의조항:<%=Arrays.toString(agree) %><br>
</body>
</html>