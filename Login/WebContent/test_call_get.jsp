<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- When client input another language 
	1. jave.net package URLencoder class
		1) import package
		2) URLEncoder class 
	-->
<%@ page import="java.net.URLEncoder" %>
<!-- Call encode() function when user input another language
	URLEncoder.encode("text","utf-8") 
	GET METHOD
		1) form tag
		2) a tag
		-->
<%! 
	String username="";
	String password="";
	String username_encoding="";
	String password_encoding="";
%>
<% 
	username="아이디";
	password="비밀번호";
	username_encoding= URLEncoder.encode(username,"utf-8");
	password_encoding= URLEncoder.encode(password,"utf-8");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Test Call GET</title>
</head>
<body>
	<h1>CALL GET METHOD</h1>
	<h2>through a tag</h2>
	<a href="test_call.jsp?username=<%=username_encoding%>&password=<%=password_encoding%>">request test_get.jsp</a>
	

</body>
</html>