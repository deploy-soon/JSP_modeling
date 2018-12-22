<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Date" %>
<%@ page import="mydb.beans.AddressBookBean" %>
<%@ page import="mydb.beans.AddressBookDAO" %>
<%!
	AddressBookDAO refAddressBookDAO = null;
	String strNum = "";
	int iNum = 0;
	String name = "";
	String address = "";
	String birthday = "";
	Date dBirthday;
%>
<%
	request.setCharacterEncoding("EUC-KR");
	strNum = request.getParameter("num");
	name = request.getParameter("name");
	address = request.getParameter("address");
	birthday = request.getParameter("birthday");
	/* strNum = "123";
	name = "test";
	address = "test";
	birthday = "2018-12-12"; */
	
	refAddressBookDAO = AddressBookDAO.getInstance();
	
	if(strNum == null || name == null || address == null || birthday == null){
		response.sendRedirect("insertAddressBook.jsp");
	}
	else{
		out.print("GET PARAMS<br>");
		out.print("num " + strNum + "<br>");
		out.print("name " + name + "<br>");
		out.print("address " + address + "<br>");
		out.print("birthday " + birthday + "<br>");
		iNum = Integer.parseInt(strNum);
		dBirthday = Date.valueOf(birthday);
	}
	
%>
<jsp:useBean id="refBean" class="mydb.beans.AddressBookBean"></jsp:useBean>
<jsp:setProperty property="num" name="refBean" value="<%=iNum%>"/>
<jsp:setProperty property="name" name="refBean" value="<%=name%>"/>
<jsp:setProperty property="address" name="refBean" value="<%=address%>"/>
<jsp:setProperty property="birthday" name="refBean" value="<%=dBirthday%>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int iresult = refAddressBookDAO.insert(refBean);
		if(iresult == 1){
			out.print("new record is coming");
		}else{
			out.print("error is coming");
		}
	%>

</body>
</html>