<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%!
	ArrayList<String> list = null;
%>    
<%
	list = (ArrayList<String>)session.getAttribute("shopping_cart");
	if(list == null || list.size() == 0) {
		out.print("��ٱ��� ����<br>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ��� ���� ��� ������</title>
<script type="text/javascript">
	function func(v) {
		var result = confirm("���� "+ v +" �� �����Ͻðھ��?");
		alert(v);
		if(result == true) {
			document.location.href="del_product.jsp?name="+v;
		} else {
			alert("���� ���");
		}
	}
</script>
</head>
<body>
	<h1>��ٱ��� ���� ��� ������</h1>
	<%
		if(list != null && list.size() > 0) {
			for(String value : list) {				
				%>
				<%=value%><input type="button" value="����" onclick="func('<%=value%>')"><br>				
			<%}
		}
	%>
	<a href="index.html">���� ������</a>
</body>
</html>