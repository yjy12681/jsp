<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//세션은 서버와의 정보를 유지하기 위한 수단으로 서버에서 생성하고, 서버에서 저장합니다.
	session.setAttribute("user_id", "xxx123"); //키(스트링), 값(오브젝트)
	session.setAttribute("user_name", "홍순자");
	
	//세션의 시간 설정(default 30분 /1800)
	session.setMaxInactiveInterval(3600); //1시간설정
	

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="session_get.jsp">세션확인하기</a>

</body>
</html>