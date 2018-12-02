<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%!
	ArrayList<String> list = null;
%>    
<%
	list = (ArrayList<String>)session.getAttribute("shopping_cart");
	if(list == null || list.size() == 0) {
		out.print("장바구니 없음<br>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니 내용 출력 페이지</title>
<script type="text/javascript">
	function func(v) {
		var result = confirm("파일 "+ v +" 를 삭제하시겠어요?");
		alert(v);
		if(result == true) {
			document.location.href="del_product.jsp?name="+v;
		} else {
			alert("삭제 취소");
		}
	}
</script>
</head>
<body>
	<h1>장바구니 내용 출력 페이지</h1>
	<%
		if(list != null && list.size() > 0) {
			for(String value : list) {				
				%>
				<%=value%><input type="button" value="삭제" onclick="func('<%=value%>')"><br>				
			<%}
		}
	%>
	<a href="index.html">시작 페이지</a>
</body>
</html>