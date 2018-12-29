<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="guestbook.bean.GuestBookDAO" %>
<%!
	String strNum = "";
	int iNum = 0;
	GuestBookDAO refGuestBookDAO = null;
%>
<%
	request.setCharacterEncoding("EUC-KR");
	refGuestBookDAO = GuestBookDAO.getInstance();
	strNum = request.getParameter("num");
	
	if(strNum == null){
		response.sendRedirect("mainGuestBook.jsp");
	}
	else{
		iNum = Integer.parseInt(strNum);
		int iresult = refGuestBookDAO.delete(iNum);
		if(iresult == 1){
			out.print("DELETE SUCCESS");
			response.sendRedirect("mainGuestBook.jsp");
		}else{
			out.print("DELETE FAILURE");
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DELETE PROCEDURE</title>
</head>
<body>

</body>
</html>
