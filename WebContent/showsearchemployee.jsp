<%@ page import='java.util.*,javax.servlet.http.HttpSession' %>
 <%@ page import="beans.SearchEmployee" %>
 <%@ page import="beans.Person" %>
 <%@ page import='services.AMSProxy'%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Person Search Result</title>

<script>
function validateRadio1()
{
	var checked = null;
	var inputs = document.getElementsByName('email');
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
<div id="navbar">
	<jsp:include page="adminheader.jsp"></jsp:include>	
</div>
<h2 align="center" >Search Result</h2>

<%

Person per= (Person)session.getAttribute("per");
%>

<form name="delFlight" id="delFlight" onsubmit="return validateRadio1()" method="post" action="DeleteEmployee">
<table border="1" style="width: 80%;" class="table table-striped" >


<tr>
<th></th>
<th>First Name</th>
<th>Last Name</th>
<th>City</th>
<th>State</th>


<th>Position</th>
<th>Hire Date</th>
</tr>


<%
SearchEmployee[] f = (SearchEmployee[]) request.getAttribute("employee");
for(SearchEmployee a  : f)
{
%>

<tr>
<td>
<input TYPE="radio" name="email" VALUE=<%=a.getEmailid()%>>
</td>
<td>
<%=a.getFirstname()%>
</td>
<td>
<%=a.getLastname()%>
</td>
<td>
<%=a.getCity()%>
</td>
<td>
<%=a.getState()%>
</td>
<td>
<%=a.getPosition()%>
</td>
<td>
<%=a.getHiredate()%>
</td>
</tr>

<%}%>

</table>
<br>
<input class="btn btn-large btn-primary" type="submit" value="Delete Selected" >
</form>
<h3>${msg}</h3></div>
</body>
</html>