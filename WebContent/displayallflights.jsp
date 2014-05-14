<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="beans.Flightdetails" %>
 <%@ page language="java" import="javax.servlet.http.HttpSession" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 
<html>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display All Flights</title>
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
<script type="text/javascript">

function takeflightvalue(kbb) {
	
	
	document.getElementById("hod").value=kbb;
	//alert(kbb);
	
	
}
</script>
<body background="new.jpg" >
<div id="navbar">
		<jsp:include page="adminheader.jsp"></jsp:include>
</div>

	

<div align=center>

<br><br>
<font size="5" color="">Flight List:</font>

<br><br>

	
	<table border="1" style="width: 80%;" class="table table-striped" >
	<tr>
	<th> Flight Number</th>
	<th> Airline Name</th>
	<th> Source</th>
	<th>Destination </th>
	<th>Crew Details </th>
	<th>No of Seats </th> </tr>
	
<% 
Flightdetails[] fl=(Flightdetails[])request.getAttribute("flightsArray");

for(Flightdetails ac : fl)
//for(int i=0;i<items.length;i++)
{
%>
<tr>
		
		<td><%=ac.getFlightnumber() %></td>
 		<td><%= ac.getAirlinename() %></td>
 		<td><%= ac.getSource() %></td>
 		<td><%= ac.getDestination()%></td>
 		<td><%= ac.getCrewdetails() %></td>
 		
 		<td><%= ac.getNumberofseats() %></td>
</tr>
<% 	
}
String fld = request.getParameter("ck");
//session.setAttribute("fno",fld);
	
%>
</table>
<br/>
<br/>

</div>

</body>
</html>