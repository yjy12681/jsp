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
	<h3>choose</h3>
	
	<c:choose>
		<c:when test="${param.name == '홍길동' }">
			홍길동입니다.
		</c:when>
		<c:when test="${param.name == '이순신' }">
			이순신입니다.
		</c:when>
		<c:otherwise>
			둘다 아닙니다.
		</c:otherwise>
	</c:choose>
	
	
	<c:choose>
		<c:when test="${param.age >= 20 }">
			성인이시네요
		</c:when>
		<c:otherwise>
			성인이 아닙니다
		</c:otherwise>
	</c:choose>
	
	

</body>
</html>