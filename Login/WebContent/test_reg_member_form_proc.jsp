<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
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
		response.sendRedirect("test_reg_member_form.jsp");
	}
	else{
		if(inputUsername.isEmpty() || inputPassword.isEmpty()){
			out.print("ERROR2");
			response.sendRedirect("test_reg_member_form.jsp");
		}
		else{
			out.print("INPUT USERNAME : "+inputUsername+"<br>");
			if(inputUsername.equals(cmpUsername) && inputPassword.equals(cmpPassword) ){
				out.print("SECCESS LOGIN");
				session.setAttribute("username", inputUsername);
				out.print("SESSION LOAD");
				response.sendRedirect("test_reg_member_form.jsp");
			}
			else{
				out.print("ERROR3");
				response.sendRedirect("test_reg_member_form.jsp");
			}
		}
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>USER INFO</title>
</head>
<body>

</body>
</html>