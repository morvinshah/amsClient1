<%@ page import='java.util.*,javax.servlet.http.HttpSession' %>

 <%@ page import='services.AMSProxy'%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
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
function validateSearchPerson()
{
	if((document.form1.fname.value=="") && (document.form1.lname.value=="") && (document.form1.memid.value=="") && (document.form1.memtype.value=="") && (document.form1.address.value=="") &&  (document.form1.city.value=="") && (document.form1.state.value=="") && (document.form1.zipcode.value=="") && (document.form1.country.value==""))
    {
     alert("At least one field should be non empty");
      return false;
    }
       	    	    	    	    	    		
       	    	    	    	    	    		
 }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Person</title>
</head>

<body background="new.jpg" >
<div id="navbar1">
		<jsp:include page="empheader.jsp"></jsp:include>
	</div>
	

<h2 align="center" >Search traveler</h2>
<br><br><br>

<div align="center">
<form name="form1" method="post"  action="SearchTravellerDetail" onSubmit="return validateSearchPerson()">


<table border="1" style="width: 80%;" class="table table-striped" >

<tr>
<td>First Name</td><td><input type="text" name="fname"/></td>
</tr>

<tr>
<td>Last Name</td><td><input type="text" name="lname"/></td>
</tr>

<tr>
<td>Flight Number</td><td><input type="text" name="fno"/></td>
</tr>



<tr>
<td> 
Travel Date
</td>


<td>
<input type="text" name="traveldate" id="datepicker"></td>
</tr>


<tr>
<td>Destination</td><td><input type="text" name="dest"/></td>
</tr>


<tr>
<td><input class="btn btn-large btn-primary"  type="submit" value="Search" onSubmit="return validateSearchPerson()"/></td>

<td><input class="btn btn-large btn-success"   type="reset" value="Reset"/></td>
</tr>
</table>
</div>
</form>
<h3>${msg}</h3>
</body>
</html>