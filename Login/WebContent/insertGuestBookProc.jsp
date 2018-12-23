<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Date" %>
<%@ page import="guestbook.bean.GuestBookBean" %>
<%@ page import="guestbook.bean.GuestBookDAO" %>
<%!
	GuestBookDAO refGuestBookDAO = null;
	String strNum = "";
	int iNum = 0;
	String title = "";
	String writer = "";
	String contents = "";
	String regist_date = "";
	Date dregist_date = null;
%>
<%
	request.setCharacterEncoding("EUC-KR");
	strNum = request.getParameter("num");
	writer = request.getParameter("writer");
	title = request.getParameter("title");
	contents = request.getParameter("contents");
	regist_date = request.getParameter("regist_date");
	/* strNum = "123";
	name = "test";
	address = "test";
	birthday = "2018-12-12"; */
	
	refGuestBookDAO = GuestBookDAO.getInstance();
	
	if(strNum == null || writer == null || title == null || contents == null || regist_date == null){
		response.sendRedirect("insertGuestBook.jsp");
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
	}
	
%>
<jsp:useBean id="refBean" class="guestbook.bean.GuestBookBean"></jsp:useBean>
<jsp:setProperty property="num" name="refBean" value="<%=iNum%>"/>
<jsp:setProperty property="writer" name="refBean" value="<%=writer%>"/>
<jsp:setProperty property="title" name="refBean" value="<%=title%>"/>
<jsp:setProperty property="contents" name="refBean" value="<%=contents%>"/>
<jsp:setProperty property="regist_date" name="refBean" value="<%=dregist_date%>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>INSERT GUEST INFO PROC</title>
</head>
<body>
	<%
		int iresult = refGuestBookDAO.insert(refBean);
		if(iresult == 1){
			out.print("new record is coming");
		}else{
			out.print("error is coming");
		}
	%>
	<script>document.location.href = "mainGuestBook.jsp";</script>
	

</body>
</html>