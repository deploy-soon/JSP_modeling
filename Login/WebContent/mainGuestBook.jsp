<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="guestbook.bean.GuestBookDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="guestbook.bean.GuestBookBean" %>
<%!
	ArrayList<GuestBookBean> refBeanList = null;
	GuestBookDAO refGuestBookDAO = null;
%>
<%
	refGuestBookDAO = GuestBookDAO.getInstance();
	refBeanList = (ArrayList)refGuestBookDAO.selectAll();
%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<meta charset="EUC-KR">
<title>Guest List</title>
<script type="text/javascript">
	function clickalert(){
		alert("get guest list");
		document.location.href = "insertGuestBook.jsp";
	}
</script>
</head>
<body>
	<table>
	 <tr>
    <th>NUM</th>
    <th>WRITER</th> 
    <th>TITLE</th>
    <th>CONTENTS</th>
    <th>REGIST DATE</th>
  </tr>
	
	<%
		int size = refBeanList.size();
		if(size == 0){
			out.print("THERE IS NO GUEST");
		}else{
			for(int i=0;i<size;i++){
				GuestBookBean temp = refBeanList.get(i);
				out.print("<tr><td>"+temp.getNum());
				out.print("</td><td>"+temp.getWriter());
				out.print("</td><td>"+temp.getTitle());
				out.print("</td><td>"+temp.getContents());
				out.print("</td><td>"+temp.getRegist_date()+"</td></tr>");
			}
		}
	%>
	</table>
	<input type="button" value="want more?" onclick="clickalert();">
</body>
</html>