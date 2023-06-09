<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    String id_check = request.getParameter("id_check");//아이디기억하기
    
  //아이디 기억하기
	if(id_check != null){
		Cookie coo = new Cookie("id_check",id);
		coo.setMaxAge(30);
		response.addCookie(coo);
		
		System.out.print(id_check);
	}
    
    
    //아이디 aa123 비밀번호 1234라면 로그인성공이라고 간주
    if(id.equals("aa123") && pw.equals("1234")){ 
    	//로그인 아이디를 저장하는 쿠키
    	Cookie coo = new Cookie("user_id",id);
    	coo.setMaxAge(1800);
    	response.addCookie(coo);
    	
    	response.sendRedirect("cookie_ex01_welcome.jsp");
    }else{
    	response.sendRedirect("cooke_ex01.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	

</body>
</html>