<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLDecoder" %>
<%!
	String username_encoding = "";
    String password_encoding = "";
    String username_decoding = "";
    String password_decoding = "";

%>
<%
	username_encoding = request.getParameter("username");
	password_encoding = request.getParameter("password");
	username_decoding = URLDecoder.decode(username_encoding, "utf-8");
	password_decoding = URLDecoder.decode(password_encoding, "utf-8");
	out.print("USERNAME : "+username_decoding+"<br>");
	out.print("PASSWORD : "+password_encoding+"<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>