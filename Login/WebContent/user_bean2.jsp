<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="refObject" class="mypkg.MyJavaBeanClass"></jsp:useBean>
	<jsp:setProperty property="age" name="refObject" value="20"/>
	<jsp:getProperty property="age" name="refObject"/>


</body>
</html>