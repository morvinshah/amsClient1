<%@ page import='java.util.*,javax.servlet.http.HttpSession' %>
 <%@ page import="beans.Person" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Info</title>
</head>
<body  background="new.jpg">
<div id="home1">
		<jsp:include page="empheader.jsp"></jsp:include>
	</div>
	

<%
Person per= (Person)session.getAttribute("user");
%>


<div align=center>
</br>
<form name="form1" method="post"  action="UpdatePerson" >

<table style="width: 80%;" class="table table-striped">
<h4 align="center">Your Account Information</h4>
<tr align="center">

</tr>

<tr>
<th><div class="form-row">First Name</th><td><input type="text" name="fname" value="<%=per.getFirstname()%>" readonly="readonly"/> </div></td>
</tr>

<tr>
<th><div class="form-row">Last Name</th><td><input type="text" name="lname" value="<%=per.getLastname()%>" readonly="readonly"/> </div></td>
</tr>

<tr>
<th>
Home Address
</th>
</tr>

<tr>
<th><div class="form-row">Address</th><td><input type="text" name="address" value="<%=per.getAddress()%>" /> </div></td>
</tr>


<tr>
<th><div class="form-row">City</th><td><input type="text" name="city" value="<%=per.getCity()%>" /> </div></td>
</tr>



<tr>
<th><div class="form-row">State</th><td><input type="text" name="state" value="<%=per.getState()%>" /> </div></td>
</tr>


<tr>
<th><div class="form-row">ZipCode</th><td><input type="text" name="zipcode" value="<%=per.getZipcode()%>"/> </div></td>
</tr>

<tr>
<th><div class="form-row"><input class="btn btn-large btn-primary"  type="submit" value="Edit"/> </div></th>
</tr>

</table>
</form>
</div>
</body>
</html>