<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Cookie[] arr = request.getCookies();
    //id_check쿠기가 있다면, input태그의 value 값에다가 id_check쿠기의 값을 넣어주세요
    
 String id_check = "";  
    if(arr != null){
    	for(int i = 0; i<arr.length; i++){
    		String name = arr[i].getName();
    		if(name.equals("id_check")){
    			id_check = arr[i].getValue();
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
	
	<h3>쿠키 확인하기</h3>
	
	<form action="cookie_ex02_ok.jsp" method="post">
	
		아이디:<input type="text" name="id" value="<%= id_check %>"><br>
		비밀번호:<input type="text" name="pw"><br>
		<input type="submit" value="로그인">
		<input type="checkbox" name="id_check" value="y">아이디기억하기
	
	</form>

</body>
</html>