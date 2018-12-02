<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>    
<%!
	String name = "";
	ArrayList<String> list = null;
%>        
<%
	name = request.getParameter("name");
	if(name == null || name.length() == 0) {
		response.sendRedirect("show_shopping.jsp");
	} 
	
	list = (ArrayList<String>)session.getAttribute("shopping_cart");
	if(list.size() > 0) {
		for(String v : list) {
			if(v.equals(name)) {
				session.removeAttribute("shopping_cart");
				out.print("장바구니에서 뺌");
				break;
			}
		}
		out.print("<script>");
		out.print("document.location.href='show_shopping_cart.jsp';");
		out.print("</script>");
		%>		
	<%}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니에서 상품 제거</title>
</head>
<body>
	<h1>장바구니에서 상품 제거</h1>
	<a href="index.html">시작 페이지</a>
</body>
</html>