<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="beans.Traveller" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 
<html>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display All Travellers</title>
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

	

<div align=center>

<br><br>
<font size="5" color="">Traveller List:</font>

<br><br>

	
	<table border="1" style="width: 80%;" class="table table-striped" >
	<tr>
	<th>SSN</th><th>Passport Number</th><th>Nationality</th><th>Email Id</th></tr>
<% 
Traveller[] dd=(Traveller[])request.getAttribute("travellersArray");

for(Traveller ac : dd)
//for(int i=0;i<items.length;i++)
{
%>
<tr>

		<td><%=ac.getSsn() %></td>
 		<td><%= ac.getPassportnumber() %></td>
 		<td><%= ac.getNationality() %></td>
 		<td><%= ac.getEmailid()%></td>
 		
</tr>
<% 	

}
	
%>

</table></div>

</body>
</html>