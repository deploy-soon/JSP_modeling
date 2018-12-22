<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="mydb.beans.AddressBookDAO" %>
<%@ page import="mydb.beans.AddressBookBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Date" %>
<%!
	AddressBookDAO refAddressBookDAO = null;
	AddressBookBean refAddressBookBean = null;
	ArrayList<AddressBookBean> refBeanList = null;
%>
<%
	refAddressBookDAO = AddressBookDAO.getInstance();
	refBeanList = refAddressBookDAO.selectAll();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Address LIST</title>
</head>
<body>
<%
	int size = refBeanList.size();
	if(size == 0){
		out.print("no record");
	}else{
		for(int i=0;i<size;i++){
			out.println("----------------<br>");
			out.println(refBeanList.get(i).getNum()+"<br>");
			out.println(refBeanList.get(i).getName()+"<br>");
			out.println(refBeanList.get(i).getAddress()+"<br>");
			out.println(refBeanList.get(i).getBirthday()+"<br>");
		}
	}
%>


</body>
</html>