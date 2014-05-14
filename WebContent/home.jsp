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
<title>Home</title>
<style> 
a { color:white;
font-size:18px;
align:center; } 
</style> 

</head>
<%
AMSProxy proxy= new AMSProxy();
Person per= (Person)session.getAttribute("user");

%>

<body background="new.jpg" >
<div align="center">
	<jsp:include page="custheader.jsp"></jsp:include>
<table align="center" border="0">

<tr><td><a href="personprofile.jsp"  class="btn btn-large btn-primary" style="width: 140px;">View Profile</a></td></tr>

<tr><td><a href="flightsearchimplementation.jsp"  class="btn btn-large btn-primary" style="width: 140px;">Flight Search</a></td></tr>
		
</table>

<table align="center" border="0">
<tr><td><a href="rentsearch.jsp"  class="btn btn-large btn-primary" style="width: 140px;">Buy a Ticket</a></td></tr>
<tr><td><a href="returnlistController"  class="btn btn-large btn-primary" style="width: 16s0px;">Cancel a Reservation</a></td></tr>
</table>	

	
</div>

<h3 align="center">
		Welcome, <%=per.getFirstname()%>! ${lastLoggedIn} </h3><br><br>
<h3 align="center">${message}</h3>
</body>
</html>