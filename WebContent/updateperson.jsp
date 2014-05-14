<%@ page import='java.util.*,javax.servlet.http.HttpSession' %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="beans.Person" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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
<title>Update Person Info</title>
</head>
<%
Person per= (Person)session.getAttribute("per1");
%>

<body>
<div id="home1">
		<jsp:include page="home.jsp"></jsp:include>
	</div>
	
<hr>
<br>
<h2 align="center" >Update Person Info</h2>
<div align="center">
<form name="form1" method="post"  action="UpdatePerson" onSubmit="">



<table class="table table-striped">
<tr>
<th colspan="2">
Account Information
</th>
</tr>

<tr>
<th><div class="form-row">First Name*</th><td><input type="text" name="fname" value="<%=per.getFirstname()%>"/> </div></td>
</tr>

<tr>
<th><div class="form-row">Last Name*</th><td><input type="text" name="lname" value="<%=per.getLastname()%>"/></div></td>
</tr>


<tr>
<th>
Home Address
</th>
</tr>

<tr>
<th><div class="form-row">Address*</th><td><input type="text" name="address" value="<%=per.getAddress()%>"/> </div></td>
</tr>


<tr>
<th><div class="form-row">City*</th><td><input type="text" name="city" value="<%=per.getCity()%>"/> </div></td>
</tr>



<tr>
<th><div class="form-row">State*</th><td><input type="text" name="state" value="<%=per.getState()%>"/> </div></td>
</tr>


<tr>
<th><div class="form-row">ZipCode*</th><td><input type="text" name="zipcode" value="<%=per.getZipcode()%>"/> </div></td>
</tr>



<tr>
<th><div class="form-row"><input class="btn btn-large btn-primary"  type="submit" value="Save Changes"/> </div></th>

<th><div class="form-row"><input class="btn btn-large btn-primary"   type="reset" value="Reset"/> </div></th>
</tr>

</table>

</div>


</form>
</body>
</html>