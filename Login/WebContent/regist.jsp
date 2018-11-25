<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
input[type=text], input[type=password], input[type=number] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<title>Registration</title>
</head>
<body>
	<h1>REGISTRATION</h1>
	<form action="reg_member_proc.jsp" method="post">
		<label for="username"><b>Username</b></label>
		<input type="text" name="username" required autofocus maxlength="30"><br>
		<label for="password"><b>Password</b></label>
		<input type="text" name="password" required autofocus maxlength="30"><br>
		<label for="name"><b>Name</b></label>
		<input type="text" name="name" required autofocus maxlength="30"><br>
		<label for="age"><b>Age</b></label>
		<input type="number" name="age" required autofocus maxlength="30"><br>
		<button type="submit">SUBMIT</button><br>
		<!-- <input type="reset" value="RESET"><br> -->
		
	</form>
</body>
</html>