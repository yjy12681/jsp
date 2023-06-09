<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
 	String id =request.getParameter("id");
	String name = request.getParameter("name");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
		<a>페이지이동 성공</a><br>
	아이디:<%= id %><br>
	이름:<%= name %><br>
</body>
</html>