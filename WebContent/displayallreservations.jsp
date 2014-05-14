<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="beans.Journey" %>
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 
<html>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display All Reservations</title>
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
<font size="5" color="">Reservation List:</font>

<br><br>

	
	<table border="1" style="width: 80%;" class="table table-striped" >
	<tr>
	<th>Flight Number</th>
	<th>Destination</th>
	<th>Boarding Point</th>
	<th>Email Id</th>
	<th>Airline Name</th>
	<th>Travel Date</th>
	</tr>
<%
Journey[] jny=(Journey[])request.getAttribute("journeyArray");

for(Journey ac : jny)

{
%>
<tr>

		<td><%= ac.getFlightnumber() %></td>
 		<td><%= ac.getDestination() %></td>
 		<td><%= ac.getBoardingpoint() %></td>
 		<td><%= ac.getEmailid()%></td>
 		<td><%= ac.getAirlinename() %></td>
 		<td><%= ac.getTraveldate() %></td>
</tr>
<% 	
}
	
%>

</table></div>

</body>
</html>