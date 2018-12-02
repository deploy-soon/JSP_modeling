<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%!
	String path = "";
%>
<%
	path = application.getRealPath("/upload");
	out.print("upload file path: "+path+"<br>");		
	MultipartRequest multipartRequest = new MultipartRequest(request, path, 10*1024*1024, "EUC-KR", new DefaultFileRenamePolicy());
	
	String filesystemName = multipartRequest.getFilesystemName("img_file");
	out.print("업로드한 파일 명은 "+filesystemName+"<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품 등록 처리 페이지</title>
</head>
<body>
	<h1>상품 등록 페이지</h1>
	<img alt="img" src="upload/<%=filesystemName%>">
	<%
		response.sendRedirect("show_goods.jsp");
	%>
</body>
</html>