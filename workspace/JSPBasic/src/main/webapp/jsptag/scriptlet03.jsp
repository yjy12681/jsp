<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    /*화면 전체에서 사용할 코드는 위에서 선언*/
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMDD");
    String now = sdf.format(date);
    //list
    ArrayList<String> list = new ArrayList<>();
    list.add("홍길동");
    list.add("이순신");
    //맵
    HashMap<Integer, String> map = new HashMap<>();
    map.put(1, "홍길동");
    map.put(2, "이순신");
    //셋
    HashSet<Integer> set = new HashSet<>();
    set.add(1);
    set.add(2);
    set.add(3);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	지금:<%= now %><br>
	리스트:<%= list.toString() %><br>
	맵:<%= map.toString() %><br>
	셋:<%= set.toString() %><br>

</body>
</html>