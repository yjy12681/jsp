<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Cookie[] arr = request.getCookies();

String id = "";
	if(arr != null){
		for(Cookie c:arr){
			if(c.getName().equals("user_id")){
				id = c.getValue(); 
				out.print(id + "님 환영합니다");
			}
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>결과페이지</h3>
	<%--
	user_id쿠키를 확인해서 "xxx님 환영합니다"를 화면에 출력
	 --%>

	

</body>
</html>