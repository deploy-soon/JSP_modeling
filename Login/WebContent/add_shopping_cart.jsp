<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%!
	ArrayList<String> list;
	String name = "";
%>
<%
	name = request.getParameter("name");
	if(name == null) {
		response.sendRedirect("show_goods.jsp");
	}
	
	out.print("name: "+name+"<br>");
	
	list = (ArrayList<String>)session.getAttribute("shopping_cart");
	if(list == null) {		
		list = new ArrayList<String>();
	} 
	
	list.add(name);
	session.setAttribute("shopping_cart", list);
	
	out.print("add<br>");
	out.print("size of list: "+list.size()+"<br>");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니에 담기</title>
</head>
<body>
	<h1>장바구니에 담기</h1>
	<a href="index.html">index</a>
</body>
</html>