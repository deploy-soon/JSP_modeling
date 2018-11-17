<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%! 
	String username = "";
	String password = "";
%>
<%
	username = request.getParameter("username");
	password = request.getParameter("password");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Handle Login Status</title>
</head>
<body>
	<%=username%>
	<%=password%>
</body>
</html>