<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	fmt는 형변환을 다루는 기능을 가지고 있습니다.
	
	parse => 다른타입으로 형변환
	format => 같은타입의 형태를 변환
	 --%>
	<h3>formatNumber, parseNumber, formatDate, parseDate</h3>
	
	<h3>formatDate=> (날자데이터를 => 날짜 형식으로 변환)</h3>
	
	<c:set var="a" value="<%=new Date() %>"/>
	
	<fmt:formatDate var="a01" value="${a }" pattern="yyyy년MM월dd일 HH시mm분ss초" />
	<fmt:formatDate var="a02" value="${a }" pattern="yyyy-MM-dd"/>
	${a } <br>
	${a01 }<br>
	${a02 }<br>
	
	<h3>parseDate => 문자데이터를 날짜형식으로 변환</h3>
	
	<fmt:parseDate value="2023-06-07" pattern="yyyy-MM-dd"/><br>
	<fmt:parseDate value="2023년06월07일 15시28분03초" pattern="yyyy년MM월dd일 HH시mm분ss초"/><br>
	
	
	<hr>
	
	<h3>formatNumber => 숫자데이터 => 숫자형식의 변환</h3>
	<c:set var="b" value="20000"/>
	<fmt:formatNumber value="${b }" pattern="00,000"/><br>
	<fmt:formatNumber value="${b }" pattern="0000.00"/><br>
	
	<h3>parseNumber => 문자데이터를 숫자형식으로 변환</h3>
	<fmt:parseNumber value="123abc원" pattern="000"/>
	
	
	<hr/>
	<h3>2020년 05월 03일로 변경해서 출력</h3>
	
	<c:set var="TIME_A" value="2020/05/03"/>
	<c:set var="TIME_C" value="2020-05-03 21:30:22"/>
	<c:set var="TIME_D" value="<%= new Date() %>"/>
	
	
	<fmt:parseDate var="TIME_A1" value="${TIME_A }" pattern="2020/05/03"/>
	<fmt:formatDate value="${TIME_A1 }" pattern="2020년05월03일"/><br>
	
	<fmt:parseDate var="TIME_C1" value="${TIME_C }" pattern="2020-05-03 21:30:22"/>
	<fmt:formatDate value="${TIME_C1 }" pattern="2020년05월03일 21시30분22초"/><br>
	
	<fmt:formatDate value="${TIME_D }" pattern="2020년05월03일"/>
	
	
	
	
</body>
</html>