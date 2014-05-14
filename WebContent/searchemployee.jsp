<%@ page import='java.util.*,javax.servlet.http.HttpSession' %>
 <%@ page import="beans.Person" %>
 <%@ page import='services.AMSProxy'%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>

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
<title>Search Employee</title>
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
<div id="navbar1">
		<jsp:include page="adminheader.jsp"></jsp:include>
	</div>
<br>
<div align=center>
<font size="5" color="">Search Employee</font>
<br><br><br><br>

<form name="form1" method="post"  action="SearchEmplo" onSubmit="return validateSearchPerson()">


<table border="1" style="width: 80%;" class="table table-striped" >

<tr>
<th>First Name</th><td><input type="text" name="firstname"/></td>
</tr>

<tr>
<th>Last Name</th><td><input type="text" name="lastname"/></td>
</tr>
<tr>
<th>City</th><td><input type="text" name="city"/></td>
</tr>
<tr>
<th>State</th><td><input type="text" name="state"/></td>
</tr>
<tr>
<th>Position</th><td><input type="text" name="position"/></td>
</tr>
<tr>
<th>HireDate</th><td><input type="text" name="hiredate"/></td>
</tr>
<tr>
<th><input class="btn btn-large btn-primary"  type="submit" value="Search" onSubmit="return validateSearchPerson()"/></th>

<th><div ><input class="btn btn-large btn-success" type="reset" value="Reset"/> </div></th>
</tr>
</table>

</form>
<h3>${msg}</h3></div>
</body>
</html>