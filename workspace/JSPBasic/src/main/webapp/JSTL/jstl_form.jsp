<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="jstl_if.jsp" method="post">
		이름:<input type="text" name = "name"><br>
		나이:<input type="text" name = "age"><br>
		<input type="submit" value="if문확인하기">
	</form>
		
	<h3>choose문</h3>
	<form action="jstl_choose.jsp" method="post">
		이름:<input type="text" name = "name"><br>
		나이:<input type="text" name = "age"><br>
		<input type="submit" value="choose문확인하기">
	</form>
	
	<!--  choose문장으로 age변수를 if~else로 처리 -->

</body>
</html>