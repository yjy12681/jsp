<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //java로 세션 값 참조
    //String name = (String)session.getAttribute("name");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션값은 sessionScope.이름 (sessionScope는 생략할 수 있지만 적어주는게 좋습니다)</h3>
	${sessionScope.name }<br>
	${sessionScope.id }<br>
	
	${applicationScope.count }<br>

</body>
</html>