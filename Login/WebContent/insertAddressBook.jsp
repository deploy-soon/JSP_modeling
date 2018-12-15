<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="insertAddressBookProc.jsp" method="post">
	<table>
		<tr>
		<td> num :</td>
		<td><input type="number" id="num" name="num" required readonly></td>
		</tr>
		<tr>
		<td> name :</td>
		<td><input type="text" id="name" name="name" required></td>
		</tr>
		<tr>
		<td> address :</td>
		<td><input type="text" id="address" name="address" required></td>
		</tr>
		<tr>
		<td> birthday :</td>
		<td><input type="date" id="birthday" name="birthday"></td>
		</tr>
		<tr>
		<td> submit :</td>
		<td><input type="submit" value="submit"></td>
		</tr>
	</table>
</form>

</body>
</html>