<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 
	1. set encoding : request.setCharacterEncoding("");
	2. load registered username and password 
	3. prepare to compare username and password
	4. redirect somewhere
 -->
<%!
	String cmpUsername = "username1";
	String cmpPassword = "password1";
	String inputUsername = "";
	String inputPassword = "";
%>
<%
	request.setCharacterEncoding("EUC-KR");
	inputUsername = request.getParameter("username");
	inputPassword = request.getParameter("password");
	if(inputUsername==null || inputPassword==null )
	{
		out.print("ERROR1");
		response.sendRedirect("login_form.jsp");
	}
	else{
		if(inputUsername.isEmpty() || inputPassword.isEmpty()){
			out.print("ERROR2");
			response.sendRedirect("login_form.jsp");
		}
		else{
			out.print("INPUT USERNAME : "+inputUsername+"<br>");
			if(inputUsername.equals(cmpUsername) && inputPassword.equals(cmpPassword) ){
				out.print("SECCESS LOGIN");
				session.setAttribute("username", inputUsername);
				out.print("SESSION LOAD");
				response.sendRedirect("logout.jsp");
			}
			else{
				out.print("ERROR3");
				response.sendRedirect("login_form.jsp");
			}
		}
		
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login session</title>
</head>
<body>

</body>
</html>