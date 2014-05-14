<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script>
function validateInput()
{


	var x1=document.forms["listFlights"]["flightnumber"].value;
	var x2=document.forms["listFlights"]["source"].value;
	var x3=document.forms["listFlights"]["destination"].value;
	
	if (x1=="" && x2=="" && x3=="")
	  {
	  alert("Not all fields can be Null !!!");
	  return false;
	  }
}	
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Flight</title>
</head>
<body background="new.jpg" >
<div id="navbar1">
		<jsp:include page="empheader.jsp"></jsp:include>
	</div>
	

<center>


<br>
<b>Search for Flight to be Updated</b> 
<br>
<br>
<form name="form1" method="post"  action="DeleteFlight" onSubmit="return validateInput()">

<table border="1" style="width: 80%;" class="table table-striped" >

<tr>
<th colspan="2">Flight Details</th>
</tr>

<tr>
<td>
Flight Number 
</td>
<td>
<input type="text" name="flightnumber">
</td>
</tr>


<tr>
<td>
Flight Name 
</td>
<td>
Emirates
</td>
</tr>


<tr>
<td>
Source
</td>
<td>
<input type="text" name="source">
</td>
</tr>


<tr>
<td>
Destination
</td>
<td>
<input type="text" name="destination">
</td>
</tr>

</table>
<br>
<input class="btn btn-large btn-primary" type="submit" value="Search Flight" >
</form>

<h3>${msg} </h3>

</center>
</body>
</html>