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
		<jsp:include page="custheader.jsp"></jsp:include>
</div>

	

<div align=center>

<br><br>
<font size="5" color="">Flight List:</font>

<br><br>

	
	<table border="1" style="width: 80%;" class="table table-striped" >
	
	<tr><td><b></b></td><td><b>Flight Number</b></td><td><b>Airline Name </b></td><td><b>Source</b></td><td><b>Destination</b></td><td><b>Crew Details</b></td><td><b>No of Seats</b></td><td><b>Duration</b></td></tr>
<% 
Flightdetails[] gd=(Flightdetails[])request.getAttribute("flightsArray");

for(Flightdetails ac : gd)
//for(int i=0;i<items.length;i++)
{
%>
<tr>
		<td><input type="checkbox" id="chkbox" name="ck" value="<%=ac.getFlightnumber()+'$'+ac.getAirlinename()+'#'+ac.getDuration()%>" onclick="javascript:takeflightvalue(this.value)"/></td>
		<td><%=ac.getFlightnumber() %></td>
 		<td><%= ac.getAirlinename() %></td>
 		<td><%= ac.getSource() %></td>
 		<td><%= ac.getDestination()%></td>
 		<td><%= ac.getCrewdetails() %></td>
 		<td><%= ac.getNumberofseats() %></td>
 		<td><%=ac.getDuration()%></td>
</tr>
<% 	
}
String fld = request.getParameter("ck");
String trd = request.getParameter("traveldate");
String src = request.getParameter("s");
String des = request.getParameter("d");
//session.setAttribute("fno",fld);
	
%>
</table>
<br/>
<br/>

<form action="payment.jsp" id="rf" name="rff" method="post">
	<input type="hidden" name="field2" id="hod"/>
	<input type="hidden" name="field3" value="<%=trd%>"/>
	<input type="hidden" name="field4" value="<%=src%>"/>
	<input type="hidden" name="field5" value="<%=des%>"/>
	<!--  -<input type="hidden" name="field6" value="<%=fld%>" />-->
	<input type="submit" value="Book Flight" />	
</form>

</div>

</body>
</html>