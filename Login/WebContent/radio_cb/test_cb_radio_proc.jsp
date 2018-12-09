<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String checkboxArray[] = null;
	String refRadio = "";
%>
<%
	checkboxArray = request.getParameterValues("hobby");
	for(int i =0; i<checkboxArray.length;i++)
	{
		out.print(checkboxArray[i]+"<br>");	
	}
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>check box</title>
</head>
<body>

</body>
</html>