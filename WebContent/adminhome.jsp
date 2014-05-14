<%@ page import='java.util.*,javax.servlet.http.HttpSession' %>
  
  <%@ page import="services.AMSProxy" %>
<%@ page import="beans.Person" %>
  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<style> 
a { color:white;
font-size:14px;
align:center; } 
</style> 
</head>
<%
AMSProxy proxy= new AMSProxy();
Person per= (Person)session.getAttribute("user");

%>



<body background="new.jpg" >
<div align="center">
	<jsp:include page="adminheader.jsp"></jsp:include>

<table align="center" border="0">

<tr><td> <a href="addemployee.jsp" class="btn btn-large btn-primary" style="width: 140px;">Add Employee</a> </td><td> <a href="searchemployee.jsp" class="btn btn-large btn-primary" style="width: 150px;">Search Employee</a> </td></tr>

</table>
&nbsp;
<table align="center" border="0">
<tr><td>
<form action="Listtravellers" action="post">
<input type="submit" class="btn btn-large btn-primary" value="List Travellers" style="width: 180px;">
</form>
</td>
</tr>

<tr>
<td>
<form action="Listemployees" action="post">
<input type="submit" class="btn btn-large btn-primary" value="List Employees" style="width: 180px;">
</form>
</td>
</tr>

<tr>
<td>
<form action="Listreservations" action="post">
<input type="submit" class="btn btn-large btn-primary" value="List Reservations" style="width: 180px;">
</form>
</td>
</tr>

<tr>
<td>
<form action="Listflights" action="post">
<input type="submit" class="btn btn-large btn-primary" value="List Flights" style="width: 180px;">
</form>
</td>
</tr>


</table>
	</div>
<h3 align="center">Welcome, <%=per.getType()%>! ${lastLoggedIn}</h3><br><br>
<div><h3 align="center">${msg}</h3></div>
</body>	
</html>