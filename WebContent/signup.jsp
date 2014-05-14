<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script>
    $(function() {
        $( "#datepicker" ).datepicker();
    });
    </script>
<title>Sign-Up</title>
<style type="text/css">
body
{
text-align:center;
}
</style>

<script type="text/javascript">
function validateSignUp(form)
{
	
    var numbers = /^[0-9]+$/;  

    if(document.form1.fname.value=="")
    {
      //alert("First Name shouldnot be left blank");
      //document.form1.fname.focus();
      //return false;
      document.getElementById("fn").innerHTML="First Name should not be left blank";
    }
    
    else if(document.form1.lname.value=="")
    {
      //alert("Last Name shouldnot be left blank");
      //document.form1.lname.focus();
      //return false;
    	document.getElementById("ln").innerHTML="Last Name shouldnot be left blank";
    }
    
    
    else if((document.form1.memid1.value=="") || (document.form1.memid2.value=="") || (document.form1.memid3.value==""))
    {
      //alert("MemberId shouldnot be left blank");
      //document.form1.memid1.focus();
      //return false;
    document.getElementById("un").innerHTML="UserName shouldnot be left blank";
    }
    

    
    
  else if(!(document.form1.memid1.value.match(numbers)) || !(document.form1.memid2.value.match(numbers)) || !(document.form1.memid3.value.match(numbers))    )
    {
      //alert("MemberId should be numeric only");
      //document.form1.memid1.focus();
      //return false;
	  document.getElementById("ssn1").innerHTML="ssn should be numeric only";
    }
    
    
    
    
    else if((document.form1.memid1.value.length<3) || (document.form1.memid2.value.length<2) || (document.form1.memid3.value.length<4))
    {
      //alert("MemberId should be of 9 digits");
      //document.form1.memid1.focus();
      //return false;
    document.getElementById("ssn").innerHTML="ssn should be of 9 digits";
    }
   
    
    
    
    else if(document.form1.uname.value=="")
    {
      //alert("UserName shouldnot be left blank");
      //document.form1.uname.focus();
      //return false;
    	document.getElementById("un").innerHTML="username should not be blank";
    }
    
    
    else if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.uname.value)))
    {
        //alert("Invalid UserName");
        //document.form1.uname.focus();

    	//return false;
    	document.getElementById("un1").innerHTML="invalid username";
    }
    
    else if(document.form1.pwd1.value=="")
    {
      //alert("Password shouldnot be left blank");
      //document.form1.pwd1.focus();
      //return false;
    	document.getElementById("pwd1").innerHTML="password should not be blank";
    }
    
    else if(document.form1.pwd2.value=="")
    {
      //alert("Password shouldnot be left blank");
      //document.form1.pwd2.focus();
      //return false;
      document.getElementById("pwd2").innerHTML="password should not be blank";
    }
    
    
    else if(document.form1.pwd1.value!=document.form1.pwd2.value)
    {
      alert("Password  & Confirm Password should be same");
      //document.form1.pwd2.focus();
      //return false;
    }
    
    else if(document.form1.address.value=="")
    {
      //alert("Address shouldnot be left blank");
      //document.form1.address.focus();
      //return false;
    	document.getElementById("addr").innerHTML="address should not be blank";
      
    }

    
    
    else if(document.form1.city.value=="")
    {
      //alert("City shouldnot be left blank");
      //document.form1.city.focus();
      //return false;
    	document.getElementById("city").innerHTML="city should not be blank";
    }
    
    
    else if(document.form1.state.value=="")
    {
      alert("State shouldnot be left blank");
      //document.form1.state.focus();
      //return false;
      document.getElementById("state").innerHTML="State should not be blank";
    }
    
    
    else if(document.form1.zipcode1.value=="")
    {
      //alert("Zipcode shouldnot be left blank");
      //document.form1.zipcode1.focus();
      //return false;
    	 document.getElementById("zp").innerHTML="zipcode should not be left blank";
    }
    
    
    else if(document.form1.zipcode1.value.length!=5 || !(document.form1.zipcode1.value.match(numbers)))
    {
      //alert("Invalid ZipCode");
      //document.form1.zipcode1.focus();
      //return false;
    	document.getElementById("zp").innerHTML="invalid zipcode";
    }
    
    
    else if(document.form1.zipcode2.value.length>0 && document.form1.zipcode2.value.length<4)
    {
      //alert("Invalid ZipCode");
      //document.form1.zipcode2.focus();
      //return false;
    	 document.getElementById("zp").innerHTML="invalid zipcode";
    }
    
    
   
    
    else if (document.form1.zipcode2.value.length!=0 && !(document.form1.zipcode2.value.match(numbers)))
    {
     // alert("ZipCode should be numeric");
      //document.form1.zipcode2.focus();
      //return false;
    	 document.getElementById("zp").innerHTML="zip code should be numeric";
    }
    
    
    
    
    else if(document.form1.dob.value=="")
    {
      //alert("Country shouldnot be left blank");
      //document.form1.country.focus();
      //return false;
    	 document.getElementById("dob").innerHTML="DOB should not be blank";
    }
    else 
    {
    	form.action="Signup";
    	form.submit();
    }
    
    


}
</script>


</head>
<body background="new.jpg" >
<div align="center">
<h1 align="center" >Airline Management</h1>

<h2 align="center" >Register For New Account</h2>
<form name="form1" method="post"  action="Signup">
<table border="1">
<tr>
<th colspan="2">
<h4>
Account Information</h4>
</th>
</tr>
<tr>
<th><div class="form-row">First Name*</th><td><input type="text" name="fname" maxlength="25"/><span id="fn"></span></div></td>
</tr>

<tr>
<th><div class="form-row">Last Name*</th><td><input type="text" name="lname" maxlength="25"/><span id="ln"></span> </div></td>
</tr>




<tr>
<th><div class="form-row">Username(Email)*</th><td><input type="text" name="uname" maxlength="25"/><span id="un"></span><span id="un1"></span> </div></td>
</tr>


<tr>
<th><div class="form-row">Password*</th><td><input type="password" name="pwd1" maxlength="25"/> <span id="pwd1"></span></div></td>
</tr>

<tr>
<th><div class="form-row">Confirm Password*</th><td><input type="password" name="pwd2" maxlength="25"/> <span id="pwd2"></span></div></td>
</tr>

<tr>
<th>
SSN*
</th>
<td>
<input type="text" name="memid1" size="3"  maxlength="3">
-<input type="text" name="memid2" size="2"  maxlength="2">
-<input type="text" name="memid3" size="4"  maxlength="4">
<span id="ssn"></span>
<span id="ssn1"></span>
</td>
</tr>
<tr>
<th><div class="form-row">DOB*</span></th><td><input type="text" name="dob" maxlength="25" id="datepicker"/><span id="dob"></span> </div></td>
</tr>
<tr>
<th><div class="form-row">Passport No*</th><td><input type="text" name="pspno" maxlength="8"/> <span id="passportno"></span></div></td>
</tr>
<tr>
<th><div class="form-row">Nationality*</th><td><input type="text" name="nat" maxlength="25"/> <span id="nationality"></span></div></td>
</tr>
<tr>
<th>
Home Address
</th>
</tr>

<tr>
<th><div class="form-row">Address*</th><td><input type="text" name="address" maxlength="25"/> <span id="addr"></span></div></td>
</tr>
<tr>
<th><div class="form-row">City*</th><td><input type="text" name="city" maxlength="25"/> <span id="city"></span></div></td>
</tr>
<tr>
<th><div class="form-row">State*</th><td><input type="text" name="state" maxlength="25"/> <span id="state"></span></div></td>
</tr>
<tr>
<th>ZipCode*</th>
<td>
<input type="text" name="zipcode1" size="5"  maxlength="5">
-<input type="text" name="zipcode2" size="4"  maxlength="4">
<span id="zp"></span>
</td>
</th>
</tr>

<tr>
<th><div class="form-row"><input type="button" class="btn btn-large btn-primary" value="Create Account" onclick="javascript:validateSignUp(this.form)"/> </div></th>
<th><div class="form-row"><input type="reset" class="btn btn-large btn-success" value="Reset"/> </div></th>
</tr>
</table>
</form>
<h3>${msg}</h3>
</div>
</body>
</html>