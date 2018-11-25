<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="mypkg.*, java.sql.*" %>
<%!
	Connection refOracleConnection = null;
	MemberBeanClass refMemberBean = null;
%>
<%
	refOracleConnection = TestConnectOracleClass.getConnection();
	refMemberBean = new MemberBeanClass();
	refMemberBean.setUsername(request.getParameter("username"));
	refMemberBean.setPassword(request.getParameter("password"));
	refMemberBean.setName(request.getParameter("name"));
	refMemberBean.setAge(Integer.parseInt(request.getParameter("age")));

	if(refOracleConnection != null){
		out.print("SUCCESS - DB CONNECTION<br>");
		int tempRecordCount = MemberDAOClass.insertMethod(refOracleConnection, refMemberBean);
		if(tempRecordCount > 0){
			out.print("LOG - success record<br>");
		}
		else{
			out.print("LOG - fail record<br>");
		}
		TestConnectOracleClass.closeOracle();
	}
	else{
		out.print("FAIL - DB CONNECTION<br>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CONTROL REGIST DATA</title>
</head>
<body>

</body>
</html>