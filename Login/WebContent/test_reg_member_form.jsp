<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>REGIST MEMBER</title>
<script type="text/javascript">
	function check_value_func(){
		var ref_username = document.getElementById("username");
		var ref_password = document.getElementById("password");
		if(ref_username == null){
			alert("cannot find username");
			return false;
		}
		if(ref_password == null){
			alert("cannot find password");
			return false;
		}
		if(ref_username.value == ""){
			alert("please input username");
			ref_username.focus();
			return false;
		}
		if(ref_password.value == ""){
			alert("please input password");
			ref_password.focus();
			return false;
		}
		if(ref_username.value.length > 0 && ref_username.value.length <= 10){
			alert("username is " + ref_username.value);
			return true;
		}
		else{
			alert("username length is too long");
			ref_username.focus();
			return false;
		}
		if(ref_username.value.length > 0 && ref_username.value.length <= 15){
			alert("username is " + ref_password.value);
			return true;
		}
		else{
			alert("password length is too long");
			ref_password.focus();
			return false;
		}
	}
</script>

</head>
<body>
	<form action="test_reg_member_form_proc.jsp" method="post" onsubmit="return check_value_func()">
		<label for="uname"><b>Username</b></label>
	    <input type="text" placeholder="Enter Username" maxlength="50" name="username" id="username" required autofocus>
	
	    <label for="psw"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="password" id="password" required autofocus>
	    
	    <input type="checkbox" name="age" value="10">10</input>
	    <input type="checkbox" name="age" value="20">20</input>
	    <input type="checkbox" name="age" value="30">30</input>
	    <input type="checkbox" name="age" value="40">40</input>
	    <input type="radio" name="gender" value="woman">woman</input>
	    <input type="submit" value="Login">
    </form>
    
    
    <!-- <table>
    	<tr>
    		<td> INPUT USERNAME</td>
    		<td>
    			<input type="text" name="username" id="username" required>
    		</td>
  		</tr>
  		<tr>
    		<td> INPUT PASSWORD</td>
    		<td>
    			<input type="password" name="password" id="password" required>
    		</td>
  		</tr>
    </table> -->
	
</body>
</html>