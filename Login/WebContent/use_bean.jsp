<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="mypkg.MyJavaBeanClass" %>
<%! MyJavaBeanClass refJavaBean = new MyJavaBeanClass(); %>
<%
	refJavaBean.setAge(20);
	out.print("AGE : " + refJavaBean.getAge());
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