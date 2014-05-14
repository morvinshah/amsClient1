<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="beans.Journey" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
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
   
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
	String fn = request.getParameter("nf");
String ln = request.getParameter("nl");


%>
<title>Issue Ticket</title>
</head>
<body background="new.jpg">

<center>


<div id="navbar1">
		<jsp:include page="custheader.jsp"></jsp:include>
	</div>
	
<br>
<font size="5" color="BLACK"><b>Issue Ticket</b></font>
<br>
<br>


<table border="1" style="width: 80%;" class="table table-striped" >

<tr>
<th colspan="2">Flight Details</th>
</tr>

<%
	
	
Journey[] joy=(Journey[])request.getAttribute("Ticketlist");

for(Journey ac : joy)
//for(int i=0;i<items.length;i++)
{
%>

<tr>
<td>
Aeroplane Name 
</td>
<td>
<input type="text" name="aeroplaneName" maxlength="25" readonly="readonly" value="<%=ac.getAirlinename()%>">
</td>
</tr>


<tr>
<td>
Email Id
</td>
<td>
<input type="text" name="emailid" maxlength="25" readonly="readonly" value="<%=ac.getEmailid()%>">
</td>
</tr>

<tr>
<td>
Flight Number
</td>
<td>
<input type="text" name="flightNumber" maxlength="25" readonly="readonly" value="<%=ac.getFlightnumber()%>">
</td>
</tr>


<tr>
<td>
Boarding Point
</td>
<td>
<input type="text" name="boardingPoint" maxlength="25" readonly="readonly" value="<%=ac.getBoardingpoint()%>">
</td>
</tr>
<tr>
<td>
Destination
</td>
<td>
<input type="text" name="destination" maxlength="25" readonly="readonly" value="<%=ac.getDestination()%>">
</td>
</tr>

<tr>
<td>
Duration
</td>
<td>
<input type="text" name="duration" maxlength="25" readonly="readonly" value="<%=ac.getDuration()%>">
</td>
</tr>
<tr>
<td>
Travel Date
</td>
<td>
<input type="text" name="date" maxlength="10" readonly="readonly" value="<%=ac.getTraveldate()%>">
</td>
</tr>
<%
	}
%>
</table>
<br>

</center>
</body>
</html>