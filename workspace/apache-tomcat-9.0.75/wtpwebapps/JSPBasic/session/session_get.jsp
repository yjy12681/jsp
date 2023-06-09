<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//세션값의 사용
	//한번 생성이 되었다면, 어디서든 기본값(30분) 까지 사용할 수 있습니다.
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
	
	//시간확인
	int time = session.getMaxInactiveInterval();
	
	//세션값의 특정값 삭제
	session.removeAttribute("user_id"); //user_id 삭제
	
	//세션값의 무효화(모든 값 삭제)
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션에 저장된 아이디:<%= id %><br>
	세션에 저장된 이름:<%= name %><br>
	세션에 저장된 시간설정:<%= time %><br>
</body>
</html>