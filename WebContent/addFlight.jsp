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
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script>
    $(function() {
        $( "#datepicker" ).datepicker();
    });
    </script>
    <script>
function validateForm()
{
var x1=document.forms["addFlights"]["flightnumber"].value;
if (x1==null || x1=="" || x1=="null" || x1=="Null" || x1=="NULL")
  {
  alert("Flight Number Cannot be Null");
  return false;
  }
var x2=document.forms["addFlights"]["movbanner"].value;
if (x2==null || x2=="" || x2=="null" || x2=="Null" || x2=="NULL")
  {
  alert("Airline Name must be filled out");
  return false;
  }
var x3=document.forms["addFlights"]["crewdetails"].value;
if (x3==null || x3=="" || x3=="null" || x3=="Null" || x3=="NULL")
  {
  alert("Crew Details must be filled out");
  return false;
  }
var x4=document.forms["addFlights"]["source"].value;
if (x4==null || x4=="" || x4=="null" || x4=="Null" || x4=="NULL")
  {
  alert("Source cannot be Null");
  return false;
  }
var x5=document.forms["addFlights"]["noofseats"].value;
if (x5==null || x5=="" || x5=="null" || x5=="Null" || x5=="NULL")
  {
  alert("Please enter number of seats");
  return false;
  } 
	  var numbers = /^[0-9]+$/;  
	  if(x5.match(numbers))  
	  {  }  
	  else  
	  {  
	  alert("number of seats must be numeric"); 
	  return false;
  }
	  
	  var x4=document.forms["addFlights"]["destination"].value;
	  if (x4==null || x4=="" || x4=="null" || x4=="Null" || x4=="NULL")
	    {
	    alert("Destination cannot be Null");
	    return false;
	    }
	  	  
	  var x4=document.forms["addFlights"]["duration"].value;
	  if (x4==null || x4=="" || x4=="null" || x4=="Null" || x4=="NULL")
	    {
	    alert("Duration cannot be Null");
	    return false;
	    }
	  	  
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add A Flight</title>
</head>
<body background="new.jpg">

<center>
<div id="navbar1">
		<jsp:include page="empheader.jsp"></jsp:include>
	</div>
	
<br>
<font size="5" color="BLACK"><b>Add Flights </b></font>
<br>
<br>
<br>
<form id="addFlights" method="post" action="AddFlights">

<table border="1" style="width: 80%;" class="table table-striped" >

<tr>
<th colspan="2">Flight Details</th>
</tr>

<tr>
<td>
Flight Number* 
</td>
<td>
<input type="text" name="flightnumber" maxlength="25">
</td>
</tr>


<tr>
<td>
Flight Name* 
</td>
<td>
<input type="text" name="flightname" maxlength="25">
</td>
</tr>


<tr>
<td>
Source*
</td>
<td>
<input type="text" name="source" maxlength="25">
</td>
</tr>
<tr>
<td>
Destination*
</td>
<td>
<input type="text" name="destination" maxlength="25">
</td>
</tr>
<tr>
<td>
Crew Details*
</td>
<td>
<input type="text" name="crewdetails" maxlength="255">
</td>
</tr>
<tr>
<td>
Number of Seats*
</td>
<td>
<input type="text" name="noofseats" maxlength="5">
</td>
</tr>
<tr>
<td>
Duration*
</td>
<td>
<input type="text" name="duration" maxlength="5">
</td>
</tr>

</table>
<br>
<input class="btn btn-large btn-primary" type="submit" value="Add Flight" >
</form>
<h3>${message}</h3>
</center>

</body>
</html>