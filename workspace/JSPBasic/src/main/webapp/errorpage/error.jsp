<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page errorPage="error_view.jsp" %> 
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="session/session_login.jsp">404에러발생</a>

	<%
	
	String num = request.getParameter("num");
	Integer.parseInt(num);
	
	%>
</body>
</html>