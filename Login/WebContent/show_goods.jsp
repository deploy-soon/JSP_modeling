<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ǰ ��� ������</title>
<script type="text/javascript">
	function func(name) {
		document.location.href="add_shopping_cart.jsp?name="+name;
	}
</script>
</head>
<body>
	<h1>��ǰ ��� ������</h1>
	<%
		String path = application.getRealPath("/upload");
		out.print("path: "+path+"<br>");
		File dirFile  = new File(path);
		File []list = dirFile.listFiles();
		for(File tempFile : list) {
			if(tempFile.isFile()) {
				String absolutePath = tempFile.getAbsolutePath();
				String name = tempFile.getName();				
				%>
				<%-- <img src="upload/<%=tempFile.getName()%>"><br> --%>
				<a href="upload/<%=name%>"><%=name%></a>
					<input type="button" value="��ٱ��Ͽ� ���" onclick="func('<%=name%>')">
				<br>
			<%;
			}
		}
	%>
	<a href="index.html">���� ������</a>
</body>
</html>