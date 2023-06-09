<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //쿠키는 생명주기가 다할때 까지 모든 페이지에서 사용할 수 있음.
    //요청이 들어올 때마다 쿠키는 자동으로 전송됨
    
    Cookie[] arr = request.getCookies();
    
    if(arr != null){ //쿠키가 존재한다면
    	for(Cookie c :arr){
    		String name = c.getName(); //쿠키이름
    		String value = c.getValue(); //쿠키값(문자열)
    		
    		out.println(name + "-" + value +"<br>");
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
	<a href="cookie_remove.jsp">쿠키 삭제하기</a>
	

</body>
</html>