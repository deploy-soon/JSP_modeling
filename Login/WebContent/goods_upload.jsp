<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ǰ ��� ������</title>
</head>
<body>
	<h1>��ǰ ��� ������</h1>
	<form name="frm1" action="goods_upload_proc.jsp" method="post" enctype="multipart/form-data">
		��ǰ �̹���:<input type="file" name="img_file" accept="image/*">
		<br>
		<input type="submit" value="upload">
	</form>
</body>
</html>