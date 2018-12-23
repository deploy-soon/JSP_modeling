<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="guestbook.bean.GuestBookDAO" %>
<%!
	GuestBookDAO refGuestBookDAO = null;
	int maxNum = 0;
%>
<%
	refGuestBookDAO = GuestBookDAO.getInstance();
	maxNum = refGuestBookDAO.getMaxNum();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert Guest Book</title>
</head>
<body>
<form action="insertGuestBookProc.jsp" method="post">
	<table>
		<tr>
		<td> num :</td>
		<td><input type="number" id="num" name="num" value="<%=maxNum%>" required readonly></td>
		</tr>
		<tr>
		<td> writer :</td>
		<td><input type="text" id="writer" name="writer" required></td>
		</tr>
		<tr>
		<td> title :</td>
		<td><input type="text" id="title" name="title" required></td>
		</tr>
		<tr>
		<td> contents :</td>
		<td><textarea rows="20" cols="80" id="contents" name="contents" required maxlength="4000"></textarea></td>
		</tr>
		<tr>
		<td> regist_date :</td>
		<td><input type="date" id="regist_date" name="regist_date"></td>
		</tr>
		<tr>
		<td> submit :</td>
		<td><input type="submit" value="submit"></td>
		</tr>
	</table>
</form>

</body>
</html>