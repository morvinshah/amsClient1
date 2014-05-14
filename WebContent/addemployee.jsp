<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
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
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    </style>
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script>
    function validateaddemp(form)
    {
    	
        var numbers = /^[0-9]+$/;  

        if(document.form1.firstname.value=="")
        {
          //alert("First Name shouldnot be left blank");
          //document.form1.fname.focus();
          //return false;
          document.getElementById("fn").innerHTML="First Name should not be left blank";
        }
        
        else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.firstname.value)))
        {
        	document.getElementById("fn").innerHTML="First name cannot be a number";
       	}
        
        else if(document.form1.lastname.value=="")
        {
          //alert("Last Name shouldnot be left blank");
          //document.form1.lname.focus();
          //return false;
        	document.getElementById("ln").innerHTML="Last Name shouldnot be left blank";
        }
        
        else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.firstname.value)))
        {
        	document.getElementById("fn").innerHTML="Last name cannot be a number";
       	}
        
        
        else if((document.form1.ssn1.value=="") || (document.form1.ssn2.value=="") || (document.form1.ssn3.value==""))
        {
          //alert("MemberId shouldnot be left blank");
          //document.form1.memid1.focus();
          //return false;
        document.getElementById("ss").innerHTML="UserName shouldnot be left blank";
        }
        

        
        
      else if(!(document.form1.ssn1.value.match(numbers)) || !(document.form1.ssn2.value.match(numbers)) || !(document.form1.ssn3.value.match(numbers))    )
        {
          //alert("MemberId should be numeric only");
          //document.form1.memid1.focus();
          //return false;
    	  document.getElementById("ss").innerHTML="ssn should be numeric only";
        }
        
        
        
        
        else if((document.form1.ssn1.value.length<3) || (document.form1.ssn2.value.length<2) || (document.form1.ssn3.value.length<4))
        {
          //alert("MemberId should be of 9 digits");
          //document.form1.memid1.focus();
          //return false;
        document.getElementById("ss").innerHTML="ssn should be of 9 digits";
        }
       
        
        
        
        else if(document.form1.username.value=="")
        {
          //alert("UserName shouldnot be left blank");
          //document.form1.uname.focus();
          //return false;
        	document.getElementById("us").innerHTML="username should not be blank";
        }
        
        
        else if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.username.value)))
        {
            //alert("Invalid UserName");
            //document.form1.uname.focus();

        	//return false;
        	document.getElementById("us").innerHTML="invalid username";
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
        	document.getElementById("ci").innerHTML="city should not be blank";
        }
        
        else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.city.value)))
        {
        	document.getElementById("ci").innerHTML="City cannot be a number";
       	}
        
        else if(document.form1.state.value=="")
        {
          //alert("State shouldnot be left blank");
          //document.form1.state.focus();
          //return false;
          document.getElementById("st").innerHTML="State should not be blank";
        }
        
        else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.state.value)))
        {
        	document.getElementById("fn").innerHTML="State cannot be a number";
       	}
        
        
        else if(document.form1.zipcode1.value=="")
        {
          //alert("Zipcode shouldnot be left blank");
          //document.form1.zipcode1.focus();
          //return false;
        	 document.getElementById("zip").innerHTML="zipcode should not be left blank";
        }
        
        
        else if(document.form1.zipcode1.value.length!=5 || !(document.form1.zipcode1.value.match(numbers)))
        {
          //alert("Invalid ZipCode");
          //document.form1.zipcode1.focus();
          //return false;
        	document.getElementById("zip").innerHTML="invalid zipcode";
        }
        
        
        else if(document.form1.zipcode2.value.length>0 && document.form1.zipcode2.value.length<4)
        {
          //alert("Invalid ZipCode");
          //document.form1.zipcode2.focus();
          //return false;
        	 document.getElementById("zip").innerHTML="invalid zipcode";
        }
        
        
       
        
        else if (document.form1.zipcode2.value.length!=0 && !(document.form1.zipcode2.value.match(numbers)))
        {
         // alert("ZipCode should be numeric");
          //document.form1.zipcode2.focus();
          //return false;
        	 document.getElementById("zip").innerHTML="zip code should be numeric";
        }
        
        
        
        
        else if(document.form1.dateofbirth.value=="")
        {
          //alert("Country shouldnot be left blank");
          //document.form1.country.focus();
          //return false;
        	 document.getElementById("dob").innerHTML="DOB should not be blank";
        }
        
        else if(document.form1.employeeid.value=="")
        {
          //alert("Country shouldnot be left blank");
          //document.form1.country.focus();
          //return false;
        	 document.getElementById("eid").innerHTML="Employee Id should not be blank";
        }
        else if(document.form1.workdescription.value=="")
        {
          //alert("Country shouldnot be left blank");
          //document.form1.country.focus();
          //return false;
        	 document.getElementById("wd").innerHTML="Work description should not be blank";
        }
        
        else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.workdescription.value)))
        {
        	document.getElementById("wd").innerHTML="Work Description cannot be a number";
       	}
        
        else if(document.form1.position.value=="")
        {
          //alert("Country shouldnot be left blank");
          //document.form1.country.focus();
          //return false;
        	 document.getElementById("ps").innerHTML="Position should not be blank";
        }
        
        else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.position.value)))
        {
        	document.getElementById("ps").innerHTML="Position cannot be a number";
       	}
        
        else if(document.form1.hiredate.value=="")
        {
          //alert("Country shouldnot be left blank");
          //document.form1.country.focus();
          //return false;
        	 document.getElementById("hd").innerHTML="Hiredate should not be blank";
        }
        
        else 
        {
        	form.action="Addemployee";
        	form.submit();
        }
       
        


    }
    </script>
</head>
<body background="new.jpg" >
<div id="navbar">
		<jsp:include page="adminheader.jsp"></jsp:include>
</div>
<div align="center">
<br>
<font size="5" color="BLACK"><b>Add Employee </b></font>
<br>
<br>
<br>

<form name="form1" method="post" action="Addemployee">

<table border="1" style="width: 80%;" class="table table-striped" >

<tr>
<th colspan="2">Add Employee:</th>
</tr>

<tr>
<td>
First Name* 
</td>
<td>
<input type="text" name="firstname" maxlength="25"><span id="fn"></span>
</td>
</tr>


<tr>
<td>
Last Name* 
</td>
<td>
<input type="text" name="lastname" maxlength="25"><span id="ln"></span>
</td>
</tr>


<tr>
<td>
SSN*
</td>
<td>
<input type="text" name="ssn1" size="3"  maxlength="3">
-<input type="text" name="ssn2" size="2"  maxlength="2">
-<input type="text" name="ssn3" size="4"  maxlength="4"><span id="ss"></span>
</td>
</tr>


<tr>
<td>
Address*
</td>
<td>
<input type="text" name="address" maxlength="25"><span id="addr"></span>
</td>
</tr>
<tr>
<td>
City*
</td>
<td>
<input type="text" name="city" maxlength="25"><span id="ci"></span>
</td>
</tr>
<tr>
<td>
State*
</td>
<td>
<input type="text" name="state" maxlength="25"><span id="st"></span>
</td>
</tr>
<tr>
<td>
ZipCode*
</td>
<td>
<input type="text" name="zipcode1" size="5"  maxlength="5">
-<input type="text" name="zipcode2" size="4"  maxlength="4"><span id="zip"></span>
</td>
</tr>
<tr>
<td>
Date of Birth*
</td>
<td>
<input type="text" name="dateofbirth" maxlength="10"><span id="dob"></span>
</td>
</tr>
<tr>
<td>
Work Description*
</td>
<td>
<input type="text" name="workdescription" maxlength="25"><span id="wd"></span>
</td>
</tr>
<tr>
<td>
Position*
</td>
<td>
<input type="text" name="position" maxlength="10"><span id="ps"></span>
</td>
</tr>
<tr>
<td>
HireDate*
</td>
<td>
<input type="text" name="hiredate" maxlength="10"><span id="hd"></span>
</td>
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
</table>
<br>
<input class="btn btn-large btn-primary" type="submit" value="Add Employee" onClick="javascript:validateaddemp(this.form)">
</form>
<h3>${msg}</h3>
</center>
</div>
</body>

