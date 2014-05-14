<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
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
<body background="new.jpg">

<div id="home1">
		<jsp:include page="custheader.jsp"></jsp:include>
	</div>
<div align=center>
<br><br>
<form name=myForm method="post" action= "Listflights" onsubmit="">
<font size="5" color="">Flight Search:</font>
<br><br><br><br>
<table class="table table-striped" style="width: 80%;">
<tr><td>Source :</td>
<td><input type=text name="source" size=50></td></tr>
<tr><td>Destination :</td>
<td><input type=text name="destination" size=50 /></td></tr>
<tr><td>Travel Date :</td>
<td><input type=text name="reldate" size=50  value="" /></td></tr>
<tr><td>Class :</td>
<td><select>
  <option value="business">Business</option>
  <option value="first">First</option>
  <option value="economy">Economy</option>
 </select></tr>
 <tr><td>Number of Travellers :</td>
<td><select>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
    <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>  
  <option value="7">7</option>
  <option value="8">8</option>
 </select></tr>

<tr><td><input class="btn btn-large btn-success" type=submit value="Search"></td></tr>
</table>

</form>
</div>
</body>
</html>