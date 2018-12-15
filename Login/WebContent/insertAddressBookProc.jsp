<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Date" %>
<%@ page import="mydb.beans.AddressBookBean" %>
<%!
	String strNum = "";
	int iNum = 0;
	String name = "";
	String address = "";
	String birthday = "";
%>
<%
	request.setCharacterEncoding("EUC-KR");
	strNum = request.getParameter("num");
	name = request.getParameter("name");
	address = request.getParameter("address");
	birthday = request.getParameter("birthday");
	
	if(strNum == null || name == null || address == null || birthday == null){
		response.sendRedirect("insertAddressBook.jsp");
	}
	else{
		out.print("GET PARAMS<br>");
		out.print("num " + strNum + "<br>");
		out.print("name " + name + "<br>");
		out.print("address " + address + "<br>");
		out.print("birthday " + birthday + "<br>");
	}
	
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