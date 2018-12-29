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
	Date new_date = null;
	GuestBookDAO refGuestBookDAO = null;
	GuestBookBean refGuestBookBean = null;
%>
<%
	strNum = request.getParameter("num");
	if(strNum == null){
		response.sendRedirect("mainGuestBook.jsp");
	}
	else{
		iNum = Integer.parseInt(strNum);
		refGuestBookDAO = GuestBookDAO.getInstance();
		refGuestBookBean = refGuestBookDAO.selectOne(iNum);
		if(refGuestBookBean == null){
			out.print("error");
		}else{
			writer = refGuestBookBean.getWriter();
			title = refGuestBookBean.getTitle();
			contents = refGuestBookBean.getContents();
			new_date = refGuestBookBean.getRegist_date();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Update Guest Book</title>
</head>
<body>
<form action="updateGuestBookProc.jsp" method="post">
	<table>
		<tr>
		<td> num :</td>
		<td><input type="number" id="num" name="num" value="<%=iNum%>" required readonly></td>
		</tr>
		<tr>
		<td> writer :</td>
		<td><input type="text" id="writer" name="writer" value="<%=writer%>" required></td>
		</tr>
		<tr>
		<td> title :</td>
		<td><input type="text" id="title" name="title" value="<%=title%>" required></td>
		</tr>
		<tr>
		<td> contents :</td>
		<td><textarea rows="20" cols="80" id="contents" name="contents" required maxlength="4000"><%=contents%></textarea></td>
		</tr>
		<tr>
		<td> regist_date :</td>
		<td><input type="date" id="regist_date" name="regist_date" value="<%=new_date%>" ></td>
		</tr>
		<tr>
		<td> submit :</td>
		<td><input type="submit" value="udpate"></td>
		</tr>
	</table>
</form>
	

</body>
</html>