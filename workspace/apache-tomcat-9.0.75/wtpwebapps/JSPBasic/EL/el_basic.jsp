<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>EL태그는 표현식을 대체해서 사용합니다.</h3>
	<%="홍길동" %><br>
	${'홍길동' }<br>
	${1+2 }<br>
	${1>2 }<br>
	${1 == 2 }<br>
	${'a' == 'a' ? '같음' : '다름' }<br>
	${1<2 && 1>2 }<br/>
	${1<2 || 1>2 }<br>
	${!false }<br>
	
	<hr/>
	<h3>EL태그만의 연산자</h3>
	${'a' eq 'a' ? '같음' : '다름' }<br>
	${1<2 and 1>2 }<br>
	${1<2 or 1>2 }<br>
	${not false }<br>
	${1 gt 2  }<br>
</body>
</html>