<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
<style type="text/css">
#tb {
	margin-left: 486px;
	margin-top: 70px;
}

h3 {
	text-align: center;
}

.para {
	color: red;
}
</style>
<script type="text/javascript">
	function checkpay(form) {

		fn = document.getElementById("fname").value;
		ln = document.getElementById("lname").value;
		cc = document.getElementById("creditcard").value;
		cvv = document.getElementById("cvvno").value;
		email = document.getElementById("emailid");
		exp1 = document.getElementById("exp1");
		exp2 = document.getElementById("exp2");
		
		
		if (fn == "" || ln == "" || cc == "" || cvv == ""|| email==""|| exp1==""|| exp2=="") {
			document.getElementById("para8").innerHTML = "plz enter all fields!!!";
			
			} 
		else
			{
				form.action="Payment";
				form.submit();
				//window.location.href="Payment?f="+fn+"&l="+ln;
				
				//setTimeout(func,9000);
				//setTimeout(document.location.href="Advertiseservlet", 7000);
				
			}
		}
	
		function checkfirstname()
		{
			fn = document.getElementById("fname").value;
			if (/^[0-9]+$/.test(fn))
				{
					document.getElementById("para1").innerHTML="enter name!!";
				}
		}
		
		function checklastname()
		{
			ln = document.getElementById("lname").value;
			if (/^[0-9]+$/.test(ln))
				{
					document.getElementById("para2").innerHTML="enter name!!";
				}
		}
		
		function checkcreditcard()
		{
			cc = document.getElementById("creditcard").value;
			if (cc.length != 16) {
				document.getElementById("para4").innerHTML = "Plz enter 16 digits.";

			}
			
		}
		
		function checkemailid()
		{
			email = document.getElementById("emailid").value;
			if(email=="")
				{
					document.getElementById("para3").innerHTML = "Email cannot be blank";
				}
			
		}
		
		function checkcvvno()
		{
			ccv = document.getElementById("ccvno").value;
			if (ccv.length != 3) {
				document.getElementById("para7").innerHTML = "Plz enter 3 digits.";
			}
			
		}
		
		function checkexp1()
		{
			exp1 = document.getElementById("exp1").value;
			if(exp1.length!=2)
				{
					document.getElementById("para5").innerHTML = "Plz enter 2 digits.";
				}
		}
		
		function checkexp2()
		{
			exp1 = document.getElementById("exp2s").value;
			if(exp2.length!=2)
				{
					document.getElementById("para6").innerHTML = "Plz enter 2 digits.";
				}
		}
</script>
</head>
<body>

	<% String flnn = request.getParameter("field2"); 
	    
	int len = flnn.length();
	int dt = flnn.indexOf("$");
	int tdd = flnn.indexOf("#");
	int count = 0;
	String h = "", c = "",u ="", temp;
	while (count < dt) {
		h = h + flnn.charAt(count);
		count++;
	}

	String flno = h;
	count=count+1;
	while(count < tdd)
	{
		u = u + flnn.charAt(count);
		count++;
	}
	
	String flname = u;
	
	
	// System.out.println("Our value:"+emal);

	int counter = tdd + 1;
	while (counter < len) {
		//char ty = flnn.charAt(counter);
		//int ss = (int) ty;
		//char zy = (char) ss;
		//temp = Character.toString(zy);
		//c = c + temp;
		c = c + flnn.charAt(counter);
		counter++;
		
		// c=c+unn.charAt(counter);
		// System.out.print(c);
	//counter++;

	}

	String flduration = c;
	
		String trdd = request.getParameter("field3");
		String sr = request.getParameter("field4");
		String dst = request.getParameter("field5");
		
	%>
	
	
	
	<!--  input type="button" value="Home" onclick="window.location.href='main.jsp'"/>-->
	<div id="tb">
	<form method="post" action="Payment">
		<table>
			<tr>
				<td>First name:</td>
				<td><p><input type="text" id="fname" name="fname" onblur="checkfirstname()"><span class="para" id="para1"></span></p></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>Last name:</td>
				<td><p><input type="text" id="lname" name="lname" onblur="checklastname()"><span class="para" id="para2"></span></p></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>Email Id:</td>
				<td><p><input type="text" id="emailid" name="emailid" onblur="checkemailid()"><span class="para" id="para3"></span></p></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>Flight No:</td>
				<td><p><input type="text" id="flightno" name="flightno" readonly="readonly" onblur="checkflightno()" value="<%=flno%>"><span class="para" id="para"></span></p></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
				<tr>
				<td>Travel Date:</td>
				<td><p><input type="text" id="td" name="td" readonly="readonly" onblur="checkflightno()" value="<%=trdd%>"><span class="para" id="para"></span></p></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>Credit Card no:</td>
				<td><p><input type="text" id="creditcard" name="creditcard" onblur="checkcreditcard()"><span class="para" id="para4"></span></p></td>
			</tr>
			<tr>
				<td>Flight duration:</td>
				<td><p><input type="text" id="creditcard" name="creditcard" onblur="checkcreditcard()" value="<%=flduration%>"><span class="para" id="para4"></span></p></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>Expiry Date:</td>
				<td><p><input type="text" id="exp1" name="exp1" maxlength="2" size="4" onblur="checkexp1()">/<input type="text" id="exp2" size="4" name="exp2" maxlength="2" onblur="checkexp2()"><span class="para" id="para5"></span><span class="para" id="para6"></span></p></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>CVV no:</td>
				<td><p><input type="text" id="cvvno" name="cvvno" onblur="checkcvvno()"><span class="para" id="para7"></span></p></td>
			</tr>
			<tr>
				<td>Airline name:</td>
				<td><p><input type="text" id="cvvno" name="cvvno" onblur="checkcvvno()" value="<%=flname %>"><span class="para" id="para7"></span></p></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
				<input type="hidden" name="hiddensrc" value="<%=sr %>" />
				<input type="hidden" name="hiddendes" value="<%=dst %>" />
				<input type="hidden" name="hiddenflightno" value="<%=flno %>"/>
				<input type="hidden" name="hiddenflightname" value="<%=flname %>" />
				<input type="hidden" name="hiddenflightduration" value="<%=flduration %>" />
			<tr>
				<td><input type="button" value="Pay" onClick="javascript:checkpay(this.form)"></td>
			</tr>
		</table>
		</form>
		<p class="para" id="para8"></p>
		
		
	</div>
	
</body>
</html>

