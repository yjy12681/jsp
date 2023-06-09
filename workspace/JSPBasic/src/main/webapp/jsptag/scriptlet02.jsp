<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>표현식</h3>
	<%
	int a = 10;
	String str = "홍길동";
	%>
	
	<%
	out.println("나이: <b>" + a + "</b><br/>");
	out.println("이름: <b>" + str + "</b><br/>");
	%>
	<br>
	나이: <b><%= a%></b>
	이름: <b><%= str %></b>
	
	<hr/>
	
	<%
		for(int i = 1; i<=9; i++){
			out.println(3 + " x " + i + " = " + 3 * i +"<br/>");
		}
	
	%>
	
	<% for(int i = 1; i <= 9; i++){ %> 3  x  <%= i%> = <%=3*i %> <br> <%}; %>
	
	<hr/>
	
	<ul>
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
		<li>6</li>
		<li>7</li>
		<li>8</li>
		<li>9</li>
	</ul>
	
	<ul>
	<%for(int i = 1; i <= 9; i++){%>
		<li><%=i%></li>
	<% };%>
	</ul>
	
	<%-- HELLO WORLD // 자동주석 CTRL + SHIFT + /   --%>
	  <%for(int i = 1; i<= 20; i++) {%>
		<input type ="checkbox" name = "product">상품<%=i %>
	<%}; %> 
</body>
</html>