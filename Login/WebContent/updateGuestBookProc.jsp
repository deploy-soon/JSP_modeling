<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="guestbook.bean.GuestBookBean" %>
<%@ page import="guestbook.bean.GuestBookDAO" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.util.HashMap" %>
<%!
	String strNum = "";
	int iNum = 0;
	String title = "";
	String writer = "";
	String contents = "";
	String regist_date = "";
	Date dregist_date = null;
	GuestBookDAO refGuestBookDAO = null;
	GuestBookBean refGuestBookBean = null;
	HashMap<String, Object> refHashMap = new HashMap<String, Object>();
%>
<%
	request.setCharacterEncoding("EUC-KR");
	refGuestBookDAO = GuestBookDAO.getInstance();
	strNum = request.getParameter("num");
	writer = request.getParameter("writer");
	title = request.getParameter("title");
	contents = request.getParameter("contents");
	regist_date = request.getParameter("regist_date");
	
	if(strNum == null || writer == null || title == null || contents == null || regist_date == null){
		response.sendRedirect("updateGuestBook.jsp");
	}
	else{
		out.print("GET PARAMS<br>");
		out.print("num " + strNum + "<br>");
		out.print("writer " + writer + "<br>");
		out.print("title " + title + "<br>");
		out.print("contents " + contents + "<br>");
		out.print("Regist Date " + regist_date + "<br>");
		iNum = Integer.parseInt(strNum);
		dregist_date = Date.valueOf(regist_date);
		refHashMap.put("num", iNum);
		refHashMap.put("writer", writer);
		refHashMap.put("title", title);
		refHashMap.put("contents", contents);
		refHashMap.put("regist_date", regist_date);
		int iresult = refGuestBookDAO.update(refHashMap);
		if(iresult == 1){
			out.print("UPDATE SUCCESS");
			response.sendRedirect("mainGuestBook.jsp");
			
		}else{
			out.print("UPDATE FAILURE");
		}
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>UPDATE PROCEDURE</title>
</head>
<body>

</body>
</html>