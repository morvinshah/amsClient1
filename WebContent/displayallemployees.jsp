<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="beans.Employee" %>
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 
<html>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display All Employees</title>
</head>
<style>
td {
 border: solid 1px black;
}
tr{
 border: solid 1px black;
}
table{
border: solid 1px black;
}
</style>
<body background="new.jpg" >
<div id="navbar">
		<jsp:include page="adminheader.jsp"></jsp:include>
</div>

	

<div align=center>

<br><br>
<font size="5" color="">Employees List:</font>

<br><br>

	
	<table border="1" style="width: 80%;" class="table table-striped" >
	<th>Email Id</th><th>SSN</th><th>Work Description</th><th>Position</th><th>Hire Date</th>
	
<% 
Employee[] emp=(Employee[])request.getAttribute("employeesArray");

for(Employee ac : emp)
//for(int i=0;i<items.length;i++)
{
%>
<tr>

		<td><%= ac.getEmailid() %></td>
 		<td><%= ac.getSsn() %></td>
 		<td><%= ac.getWorkdesc() %></td>
 		<td><%= ac.getPosition()%></td>
 		<td><%= ac.getHiredate() %></td></tr>
<% 	
}
	
%>

</table></div>

</body>
</html>