<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	
	double cm = Double.parseDouble(request.getParameter("cm"));
	double kg = Double.parseDouble(request.getParameter("kg"));
	
	double bmi = (kg / (((cm/100) * (cm/100))));
	
	
	
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a>신체정보</a><br>
	이름:<%=name %><br>
	키:<%=cm %><br>
	몸무게:<%=kg %><br>
	<% if(bmi>=25) {%>
		<b>과체중입니다</b>
	<%}else if(bmi<=18) {%>
		<b>저체중입니다</b>
	<%}else {%>
		<b>정상입니다</b>
	<%}; %>
</body>
</html>