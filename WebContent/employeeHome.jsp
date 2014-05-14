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
<title>Employee Home</title>
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
	<jsp:include page="empheader.jsp"></jsp:include>

	<table align="center" border="0">

<tr><td> <a href="personprofile.jsp" class="btn btn-large btn-primary" style="width: 140px;">View Profile</a> </td>

<td> <a href="searchtravellerdetail.jsp" class="btn btn-large btn-primary" style="width: 150px;">Search Traveller</a> </td></tr>

</table>
&nbsp;
<table align="center" border="0">
<tr><td>
<a href="addFlight.jsp" class="btn btn-large btn-primary" style="width: 150px;">Add Flight</a>
</td>
</tr>

<tr>
<td>
<a href="deleteFlight.jsp" class="btn btn-large btn-primary" style="width: 150px;">Search Flight</a>
</td>
</tr>

<tr>
<td>
<a href="flightcriteria.jsp" class="btn btn-large btn-primary" style="width: 150px;">Update Flight</a>

</td>
</tr>

<tr>
<td>

</td>
</tr>


</table>
<h3 align="center">Welcome <%=per.getFirstname()%>! ${lastLoggedIn}</h3><br><br>
	<h4>${message}</h4>
	<h4>${msg}</h4>
</body>





</html>