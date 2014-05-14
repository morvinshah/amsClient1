<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import='java.util.*,javax.servlet.http.HttpSession' %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign-In</title>

<script>
function validateLogin()
{
	 
    if(document.form1.user.value=="")
    {
      alert("User Name is empty");
      document.form1.user.focus();
      return false;
    }
    else if(document.form1.pwd.value=="")
    {
      alert("Password is empty");
      document.form1.pwd.focus();
      return false;
    }
    else if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.uname.value)))
    {
        alert("UserName should be in E-Mail Foramt");
        document.form1.uname.focus();

    	return false;
    }
}
</script>


</head>
<body background="new.jpg" >
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div align=center>
 <font size="36" color="#fff" >Airline Management System</font>
<br>
<br>
<br>
</div>
<br>


<div align=center>
<table align="center">
<form name="form1" method="post"  action="SignInController" onSubmit="return validateLogin()">


<tr height="50">
<td align="center"><input type="text" style="width: 430px;  height:30px" placeholder="UserName" name="user"/> </td>
</tr>

<tr height="50">
<td align="center"><input type="password" style="width: 430px;  height:30px" placeholder="Password" name="pwd"/> </td>
</tr>
</div>


<tr height="50" align="center">
<td><div class="form-row"><input type="submit" class="btn btn-large btn-primary" value="Login" style="width: 140px;" > </div></td>
</form>
</tr>
<tr>
<td align="center">
<form name=myForm method="post" action= "signup.jsp" onsubmit="">
<input type="submit" class="btn btn-large btn-success" value="Sign Up" style="width: 140px;">
</form>
</td>
</tr>
</table>

</form>
<br>
<div align="left">
<font size="5" color="red"><b><i>${error}</i></b></p></font>
</div>
<h3>${msg}</h3>
</div>

</frameset>
</body>
</html>