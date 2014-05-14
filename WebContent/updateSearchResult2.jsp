<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="javax.servlet.http.HttpSession" %>
<%@ page language="java" import= "beans.Flightdetails"%> 
<%@ page language="java" import="java.util.*,java.lang.*" %> 
<%@ page language="java" import="java.util.ArrayList,java.lang.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movie Update</title>
</head>
<body background="new.jpg">
<div id="navbar1">
		<jsp:include page="empheader.jsp"></jsp:include>
	</div>
	
<center>
<b>Update Flight</b>
<br>

<form id="updateMovie" method="post" action="UpdateFlight2">

<table border="1" style="width: 80%;" class="table table-striped" >

<%
Flightdetails a = (Flightdetails) request.getAttribute("flightArray");

%>

<tr>
<td>Flight Number: </td>
<td><input type="text" name="flightnumber" value="<%=a.getFlightnumber()%>" maxlength="25" readonly="readonly" /></td>
</tr>

<tr>
<td>Flight Name*: </td>
<td>Emirates</td>
</tr>

<tr>
<td>Source: </td>
<td><input type="text" name="source" value="<%=a.getSource()%>" maxlength="25" readonly="readonly"></td>
</tr>

<tr>
<td>Destination: </td>
<td><input type="text" name="destination" value="<%=a.getDestination()%>" maxlength="10" readonly="readonly"></td>
</tr>
<tr>
<td>Duration: </td>
<td><input type="text" name="duration" value="<%=a.getDuration()%>" maxlength="5" ></td>
</tr>

<tr>
<td>Number of Seats: </td>
<td><input type="text" name="numberofseats" value="<%=a.getNumberofseats()%>" maxlength="5"></td>
</tr>
<tr>
<td>Crew Details: </td>
<td><input type="text" name="crewdetails" value="<%=a.getCrewdetails()%>" maxlength="10"></td>
</tr>

</table>
<br>
<input class="btn btn-large btn-primary" type="submit" value="Update" >
</form>
<h3>${msg}</h3>
</center>

</body>
</html>