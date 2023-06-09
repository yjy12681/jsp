<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1~100까지 홀수의 합</h3>
	
	<%
	int num = 0;
	for(int i = 1; i<=100; i+=2) {
		num+=i;
	}%>
	
	결과:<%=num %>
	
	<c:set var="sum" value="0"/>
	
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum+i }"/>
	</c:forEach>
	
	foreach결과:${sum }
	
	<hr/>
	<h3>구구단 3단</h3>
	
	<hr/>
	<h3>2~9단까지 구구단 출력</h3>
	
	<c:set var="dan" value="" />
	<c:set var="dan1" value=""/>
	
	
	<c:forEach var="i" begin="2" end="9" step="1">		
			<c:forEach var="j" begin="1" end="9" step="1" >
				${i } x ${j } = ${i *j }<br>
			</c:forEach>				
	</c:forEach>
	
	<hr/>
	
	<%
	//배열을 선언
	int[] arr = new int[] {1,2,3,4,5};
	//향상된 포문
	for(int a:arr) {
		out.println(a);
	}
	%>
	
	<c:set var="arr" value="<%= new int[] {1,2,3,4,5} %>"/>	
	
	
	<c:forEach var="a" items="${arr }" varStatus="s">
		${s.index}<br>
		${s.count }<br>
		
		${a }<br>
	</c:forEach>
	

</body>
</html>