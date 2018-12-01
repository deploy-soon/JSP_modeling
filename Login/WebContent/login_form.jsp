<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
input[type=text], input[type=password] {
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
<title>Login PAGE</title>
</head>
<body>
	<!-- Before launch server login first -->
	<h1>Login</h1>
	<form action="login_form_proc.jsp" method="post">
		<label for="uname"><b>Username</b></label>
	    <input type="text" placeholder="Enter Username" maxlength="50" name="username" required autofocus>
	
	    <label for="psw"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="password" required autofocus>
	    <button type="submit">Login</button>
    </form>
    
    <!-- <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label> -->
</body>
</html>