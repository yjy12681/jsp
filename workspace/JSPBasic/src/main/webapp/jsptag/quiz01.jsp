<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    //샐행될 때마다 랜덤한 로또번호를 저장하고 출력해주는 프로그램코드를 작성해보세요
    //방법은 자유
    
    
    
    Set<Integer> set = new HashSet<>();
    
    
   	int i = 1;
	int number;
   	while(set.size()!=6){
   		number = (int)(Math.random()*45);
   		set.add(number);
   	}
	   
    	
    
    	
    
    
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a>로또번호</a>
	<br>

	<%= set.toString() %> <br>
	
	
	<%for(int a : set) {%>
		<%= a %>
	<%}; %>
</body>
</html>