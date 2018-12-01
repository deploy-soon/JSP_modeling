<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 
	1. get username from session
	2. check username
 -->
 <%!
 	String username = "";
 %>
 <%
 	username = (String)session.getAttribute("username");
 	if(username==null){
 		out.print("please login again<br>");
 	}
 	else{
 		out.print("Hello, login<br>");
 		session.removeAttribute("username");
 		out.print("username deleted");
 	}
 	
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LOGOUT PAGE</title>
</head>
<body>
	<h1>LOGOUT</h1>
	<a href="index.html">MOVE TO INDEX</a>
	<a href="login_form.jsp">LOGIN</a>
</body>
</html>