<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		get방식은 반드시 form이 필요한 것은 아니다 
		a태그를 이용해서 값을 넘길 수도 있습니다. 
		
		a태그에 값을 보내려면 쿼리스트링을 사용합니다.
		
		?키=값 형태로 보내면 됩니다.
		여러개 보낼 때
		>키=값&키=값&키=값
	-->
	
	<a href="req_get04.jsp?id=aaa123&name=홍길동">이동하기</a>

</body>
</html>