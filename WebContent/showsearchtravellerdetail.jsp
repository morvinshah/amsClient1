<%@ page import='java.util.*,javax.servlet.http.HttpSession' %>
 <%@ page import="beans.SearchTraveller" %>
 <%@ page import='services.AMSProxy'%>

<%//@ page errorPage="errorpage.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Traveler Search Result</title>

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
		<jsp:include page="empheader.jsp"></jsp:include>
</div>
<h2 align="center" >Search Result</h2>



<form name="form1"  method="post">


<%

SearchTraveller[] f= (SearchTraveller[])request.getAttribute("traveller");
for(SearchTraveller a  : f)
{
%>

<table border=="0" align="center">

<tr>
<td>First Name: </td>
<td><input type="text" name="firstname" value="<%=a.getFirstname()%>" maxlength="25" readonly="readonly" /></td>
</tr>


<tr>
<td>Last Name: </td>
<td><input type="text" name="lastname" value="<%=a.getLastname()%>" maxlength="25" readonly="readonly"></td>
</tr>
<tr>
<td>Flight Name*: </td>
<td>Emirates</td>
</tr>
<tr>
<td>Flight Number: </td>
<td><input type="text" name="flightnumber" value="<%=a.getFlightnumber()%>" maxlength="30" readonly="readonly"></td>
</tr>
<tr>
<td>Destination: </td>
<td><input type="text" name="destination" value="<%=a.getDestination()%>" maxlength="30" readonly="readonly"></td>
</tr>

<tr>
<td>Travel Date: </td>
<td> <input type="text" name="traveldate" value="<%=a.getTraveldate()%>" maxlength="30"readonly="readonly"></td>
</tr>

</table>
<%
}
%>
</form>


</body>
</html>