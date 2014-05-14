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
<script>
function validateRadio1()
{
	var checked = null;
	var inputs = document.getElementsByName('fnumber');
	for (var i = 0; i < inputs.length; i++) {
	          if (inputs[i].checked) {
	           checked = inputs[i];
	   }
	}
	if(checked==null)
	{
	    alert('Please choose an option');
	    return false;
	}
	else{
	    return confirm('You have chosen '+checked.value+' is this correct?');
	}
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Flight Search Result</title>
</head>
<body background="new.jpg">
<div id="navbar1">
		<jsp:include page="empheader.jsp"></jsp:include>
	</div>
<center>
<b>Select the Flight to Delete</b>
<br>
<form name="delMovies" id="delMovies" onsubmit="return validateRadio1()" method="post" action="DeleteFlightInfo">
<table border="1" style="width: 80%;" class="table table-striped" >


<tr>
<th></th>
<th>Flight Number</th>
<th>Flight Name</th>
<th>Source</th>
<th>Destination</th>


<th>Duration</th>
<th>Number of Seats</th>
<th>Crew Details</th>

</tr>


<% Flightdetails[] f = (Flightdetails[]) request.getAttribute("flightArray");
for(Flightdetails a  : f)
{
%>

<tr>
<td>
<input TYPE="radio" name="fnumber" VALUE=<%=a.getFlightnumber()%>>
</td>
<td>
<%=a.getFlightnumber()%>
</td>
<td>
Emirates
</td>
<td>
<%=a.getSource()%>
</td>
<td>
<%=a.getDestination()%>
</td>
<td>
<%=a.getDuration()%>
</td>
<td>
<%=a.getNumberofseats()%>
</td>
<td>
<%=a.getCrewdetails()%>
</td>
</tr>

<%}%>

</table>
<br>
<input class="btn btn-large btn-primary" type="submit" value="Delete Selected" >
</form>
</center>
</body>

</html>