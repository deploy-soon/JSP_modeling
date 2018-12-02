<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품 등록 페이지</title>
</head>
<body>
	<h1>상품 등록 페이지</h1>
	<form name="frm1" action="goods_upload_proc.jsp" method="post" enctype="multipart/form-data">
		상품 이미지:<input type="file" name="img_file" accept="image/*">
		<br>
		<input type="submit" value="upload">
	</form>
</body>
</html>