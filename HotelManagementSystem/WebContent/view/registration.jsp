<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="style.css" />
<script>
/*function validation(){
	var user_id=document.form.user_id.value;
	user_id.addEventListener("blur","user_id_verify",true);
	var password=document.form.password.value;
	user_id.addEventListener("blur","password_verify",true);
	var rp=document.form.rp.value;
	user_id.addEventListener("blur","retype_password_verify",true)
	var role=document.form.role.value;
	user_id.addEventListener("blur","role_verify",true)
	var user_name=document.form.user_name.value;
	user_id.addEventListener("blur","user_name_verify",true)
	var mobile_no=document.form.user_id.value;
	user_id.addEventListener("blur","mobile_no_verify",true)
	var phone=document.form.user_id.value;
	user_id.addEventListener("blur","phone_verify",true)
	var address=document.form.user_id.value;
	user_id.addEventListener("blur","address_verify",true)
	var email=document.form.user_id.value;
	user_id.addEventListener("blur","email_verify",true)
	if(user_id.equals(null)||user_id=="")
		{
		document.fom.user_id.style.backgroundcolor="red";
		document.form.user_id_error.value="user_id is required";
		document.form.user_id.focus();
		return false;
		//alert("user_id can't blank");
		//return false;
		}
	else if(user_id.length <1 && user_id.length>4)
	{
		document.form.user_id.style.backgroundcolor="red";
		document.form.user_id_error.textContent="user_id should be 1 to 4 characters";
		document.form.user_id.focus();
		return false;
	//document.form.user_id.style.backgroundcolor="green";
	//document.form.password.focus();
	}
	//else{
	//document.form.user_id.style.backgroundcolor="red";
	//document.form.user_id.focus();
//}
	
	else if(password.equals(null)||password=="")
	{
		document.form.password.style.backgroundcolor="red";
		document.form.password_error.textContent="password is required";
		document.form.password.focus();
		return false;
		//alert("password can't blank");
	//return false;
	
	}
	else if(password.length<1 && password.length>7)
		{
		document.form.password.style.backgroundcolor="red";
		document.form.password_error.textContent="password should be 1 to 7 characters";
		document.form.password.focus();
		return false;
		}
	
	else if(rp.equals(null)||rp=="")
	{
		document.form.rp.style.backgroundcolor="red";
		document.form.rp_error.textContent=" retype password is required";
		document.form.rp.focus();
		return false;
	//alert("confirm password can't blank");
	//return false;
	
	}
	else if(password.value==rp.value)
		{
		document.form.password.style.backgroundcolor="red";
		document.form.rp.style.backgroundcolor="red";
		document.form.password_error.innerHTML="password does not match with the retype password";
		return false;
		}	
	else if(role.equals(null)||role=="")
	{
		document.form.role.style.backgroundcolor="red";
		document.form.role_error.textContent=" role is required";
		document.form.role.focus();
		return false;
	//alert("role can't blank");
	//return false;
	
	}
	else if(role.length<1 && role.length>10)
		{
		document.form.role.style.backgroundcolor="red";
		document.form.role_error.textContent=" role should be 1 to 10 characters";
		document.form.role.focus();
		return false;
		}
	else if(user_name.equals(null)||user_name=="")
	{
		document.form.user_name.style.backgroundcolor="red";
		document.form.user_name_error.textContent=" retype password is required";
		document.form.user.focus();
		return false;
	//alert("user_name can't blank");
	//return false;
	
	}
	else if(user_name.length<1 && user_name.length>20)
		{
		document.form.user_name.style.backgroundcolor="red";
		document.form.user_name_error.textContent=" role should be 1 to 20 characters";
		document.form.user_name.focus();
		return false;
		}
	
	else if(mobile_no.equals(null)||mobile_no=="")
	{
		document.form.mobile_no.style.backgroundcolor="red";
		document.form.mobile_no_error.textContent="mobile number is required";
		document.form.mobile_no.focus();
		return false;
		}
	//alert("mobile number can't blank");
	//return false;
else if (mobile_no.length<1 && mobile_no.length>10)
{
	document.form.mobile_no.style.backgroundcolor="red";
	document.form.mobile_no_error.textContent=" mobile number should be 1 to 10 characters";
	document.form.mobile_no.focus();
	return false;
	}
	
	else if(phone.equals(null)||phone=="")
	{
		document.form.phone.style.backgroundcolor="red";
		document.form.phone_error.textContent="phone number is required";
		document.form.phone.focus();
		return false;
	//alert("phone can't blank");
	//return false;
	
	}
	else if(phone.length<1 && phone.length>10)
	{
		document.form.phone.style.backgroundcolor="red";
		document.form.phone_error.textContent=" phone number should be 1 to 10 characters";
		document.form.phone.focus();
		return false;
		}
	
	else if(address.equals(null)||address=="")
	{
		document.form.address.style.backgroundcolor="red";
		document.form.address_error.textContent=" address is required";
		document.form.address.focus();
			return false;
	//alert("address can't blank");
	//return false;
	
	}
	else if (address.length<1 && address.length>25)
	{
		document.form.address.style.backgroundcolor="red";
		document.form.address_error.textContent=" address should be 1 to 25 characters";
		document.form.address.focus();
		return false;
		}
	
	else if(email.equals(null)||email=="")
	{
		document.form.email.style.backgroundcolor="red";
		document.form.email_error.textContent=" email is required";
		document.form.email.focus();
			return false;
	//alert("email can't blank");
	//return false;
	
	}
	else if(email.length<1 && email.length>15)
	{
		document.form.email.style.backgroundcolor="red";
		document.form.email_error.textContent=" mobile number should be 1 to 15 characters";
		document.form.email.focus();
		return false;
		}
	
}
function user_id_verify()
{
	if((user_id.value!=" ")&&((user_id.value>=1)&&(user_id.value<=4)))
			{
		document.form.user_id.style.border="1px solid yellow";
		document.form.user_id_error.innerHTML="";
		return true;
			}
	if((password.value!=" ")&&((password.value>=1)&&(password.value<=7)))
			{
		document.form.password.style.border="1px solid yellow";
		document.form.password_error.innerHTML="";
		return true;
			}
	if((rp.value!=" ")&&((rp.value>=1)&&(rp.value<=7)))
			{
		document.form.rp.style.border="1px solid yellow";
		document.form.rp_error.innerHTML="";
		return true;
			}
	if((role.value!=" ")&&((role.value>=1)&&(role.value<=10)))
			{
		document.form.role.style.border="1px solid yellow";
		document.form.role_error.innerHTML="";
		return true;
			}
	if((user_name.value!=" ")&&((user_name.value>=1)&&(user_name.value<=20)))
			{
		document.form.user_name.style.border="1px solid yellow";
		document.form.user_name_error.innerHTML="";
		return true;
			}
	if((mobile_no.value!=" ")&&((mobile_no.value>=1)&&(mobile_no.value<=10)))
			{
		document.form.mobile_no.style.border="1px solid yellow";
		document.form.mobile_no_error.innerHTML="";
		return true;
			}
	if((phone.value!=" ")&&((phone.value>=1)&&(phone.value<=10)))
			{
		document.form.phone.style.border="1px solid yellow";
		phone_error.innerHTML="";
		return true;
			}
	if((address.value!=" ")&&((address.value>=1)&&(address.value<=25)))
			{
		document.form.address.style.border="1px solid yellow";
		document.form.address_error.innerHTML="";
		return true;
			}
	if((email.value!=" ")&&((email.value>=1)&&(email.value<=15)))
			{
		document.form.email.style.border="1px solid yellow";
		document.form.email_error.innerHTML="";
		return true;
			}
	}
function validateUseId()
{
	var user_id=document.form.user_id.value;
	if(user_id.length >=1 && user_id.length<=4)
		{
		document.form.user_id.style.backgroundcolor="green";
		document.form.password.focus();
		}
	else{
		document.form.user_id.style.backgroundcolor="red";
		document.form.user_id.focus();
	}
	}
function validatePassword()
{
	var user_id=document.form.user_id.value;
	if(user_id.length >=1 && user_id.length<=4)
		{
		document.form.user_id.style.backgroundcolor="green";
		document.form.password.focus();
		}
	else{
		document.form.user_id.style.backgroundcolor="red";
		document.form.user_id.focus();
	}
	}*/
	
	function validation()
	{
	var user_id = document.form.user_id;
	var password = document.form.password;
	var rp = document.form.rp;
	var role = document.form.role;
	var user_name = document.form.user_name;
	var mobile_no = document.form.mobile_no;
	var phone = document.form.phone;
	var address = document.form.address;
	var email = document.form.email; 
	if(user_id_validation(user_id,1,4))
	{
	if(password_validation(password,4,7))
	{
	if(rp_validation(rp,4,7))
	{
	if(password_rp_validation(password,rp))
	{
	if(role_validation(role,1,10))
	{ 
	if(user_name_validation(user_name,2,20))
	{
	if(mobile_no_validation(mobile))
	{
	if(phone(phone))
	{
	if(address(address,5,25))
	{
	if(email(email,7,15))
	{
	}
	}
	}
	} 
	}
	} 
	}
	}
	}
	}
	return false;
	

	function user_id_validation(user_id,1,4)
	{
	var user_id = user_id.value.length;
	var pattern=/^[A-Za-z0-9]$/
	if (user_id != 0 && user_id <= 4 && user_id.match(pattern))
	{
		return true;
	}
	else
	{
	alert("User Id should not be empty / length be between "+1+" to "+4+ "characters");
	user_id.focus();
	return false;
	}
	}
	function password_validation(password,4,7)
	{
	var password = password.value.length;
	var pattern=/^[A-Za-z0-9]$/
	if (password != 0 && password <= 7 && password >=4 && password.match(pattern))
	{
		return true;
	}
	else
		{
	alert("Password should not be empty / length be between "+4+" to "+7+"characters");
	passwors.focus();
	return false;
	}
	}
	function rp_validation(rp,4,7)
	{
	var rp = rp.value.length;
	var pattern=/^[A-Za-z0-9]$/
	if (rp != 0 && rp <= 7 && rp >=4 && rp.match(pattern))
	{
		return true;
	}
	else
		{
	alert("retype Password should not be empty / length be between "+4+" to "+7+"characters");
	rp.focus();
	return false;
	}
	}
	function password_rp_validation(password,rp)
	{
		if(password.value.equals(rp.value))
			{
			return true;
			}
		else
			{
			alert("password mismatch");
			rp.focus();
			return false;
			}
	}
	function role_validation(role,1,10)
	{
	var role = role.value.length;
	var pattern=/^[A-Za-z]$/
	if (role != 0 && role <= 10 && role>=1 && role.match(pattern))
	{
		return true;
	}
	else
		{
	alert("role should not be empty / length be between "+1+" to "+10+"characters");
	role.focus();
	return false;
	}
	}
	
	function user_name_validation(user_name,2,20)
	{
	var user_name = user_name.value.length;
	var pattern=/^[A-Za-z]$/
	if (user_name != 0 && user_name <= 20 && user_name >=2 && user_name.match(pattern))
	{
		return true;
	}
	else
		{
	alert("user name should not be empty / length be between "+2+" to "+20+"characters");
	user_name.focus();
	return false;
	}
	}
	
	function mobile_no_validation(mobile_no)
	{
	var mobile_no = mobile_no.value.length;
	var pattern=/^[0-9]$/
	if (mobile_no != 0 && mobile_no == 10 && mobile_no.match(pattern))
	{
		return true;
	}
	else
		{
	alert("mobile_no should not be empty / length should be "+10+"digits");
	mobile_no.focus();
	return false;
	}
	}
	
	function phone_validation(phone)
	{
	var phone = phone.value.length;
	var pattern=/^[0-9]$/
	if (phone != 0 && phone == 10 && phone.match(pattern))
	{
		return true;
	}
	else
		{
	alert("phone should not be empty / length should be "+10+"digits");
	phone.focus();
	return false;
	}
	}
	function address_validation(address,5,25)
	{
	var address = address.value.length;
	var pattern=/^[A-Za-z0-9\s/-:,]$/
	if (address != 0 && address <= 25 && address >=5 && address.match(pattern))
	{
		return true;
	}
	else
		{
	alert("address should not be empty / length be between "+5+" to "+25+"characters");
	address.focus();
	return false;
	}
	}
	
	function email_validation(email,7,15)
	{
	var email = email.value.length;
	var pattern=/^[A-Za-z0-9@_$!]$/
	if (email != 0 && email <= 15 && email >=7 && email.match(pattern))
	{
		alert('Form Succesfully Submitted');
		window.location.reload()
		return true;
	}
	else
		{
	alert("email should not be empty / length be between "+7+" to "+15+"characters");
	email.focus();
	return false;
	}
	}
	}
	
</script>
</head>
<body>


<div id="one"><img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" width="100" height="100">HOTEL BOOKING</div>
<div id="header"></div>
<div id="navigation">
	<ul>
		<li><a href="homepage.jsp" >Home</a></li>
		<li><a href="about.jsp">About</a></li>
		<li><a href="contact.jsp">Contact</a></li>
		<li><a href="gallery.jsp">Gallery</a></li>
		<li><a href="registration.jsp" id="onlink">Register</a></li>
		<li><a href="login.jsp">Login</a></li>
		<div id="navigation2"><form action=""><ul><li><input type="submit" name="submit" value="search"></li>
		<li><input type="date" name="end date" placeholder="end date"></li>
		<li><input type="date" name="from date" placeholder="from date"></li>
		<li><input type="text" name="location" placeholder="location">
		</li>
			</ul></form></div>	
	</ul>
	<br>
</div>
<div id="container">
<div id="content">
<div id="contentleft">
<div id="register-box">
	<div class="c">
<h2>Registration form</h2>
<form name="form" action="UserRegistration" method="post" onClick="return validation()" >
<table>
<div id="user_id_error"></div>
<tr>
<td>user_id</td>
<td>:</td>
<td><input type="text" name="userid" placeholder="user id" on></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>
<div id="password_error"></div>
<tr>
<td>password</td>
<td>:</td>
<td><input type="password" name="pwd1" placeholder="password"></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>
<div id="retype_password_error"></div>
<tr>
<td>retype password</td>
<td>:</td>
<td><input type="password" name="rpwd" placeholder="retype password"></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>
<div id="role_error"></div>
<tr>
<td>role</td>
<td>:</td>
<td><input type="text" name="role" placeholder="role"></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>
<div id="user_name_error"></div>
<tr>
<td>user_name</td>
<td>:</td>
<td><input type="text" name="uname" placeholder="username"></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>
<div id="mobile_no_error"></div>
<tr>
<td>mobie_no</td>
<td>:</td>
<td><input type="text" name="mnmbr" placeholder="mobile number"></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>
<div id="phone_error"></div>
<tr>
<td>phone</td>
<td>:</td>
<td><input type="text" name="phone" placeholder="phone number"></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>
<div id="address_error"></div>
<tr>
<td>address</td>
<td>:</td>
<td><textarea name="addr" rows="4" cols="50" placeholder=></textarea></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>



<tr>
<td></td>
<td></td>
<td></td>
</tr>
<div id="email_error"></div>
<tr>
<td>email</td>
<td>:</td>
<td><input type="email" name="email" placeholder="email"></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tr>
<td></td>
<td></td>
<td><input type="submit" name="register" value="register"><%=(request.getAttribute("errMessage")==null)?"":request.getAttribute("errMessage") %><br><form action="registration.jsp"><input type="submit" name="cancel" value="cancel"></form></td>
</tr>

</table>
</form>

</div>
</div>
</div>
<div id="sidebar">
<div class="sidebar-element">
<h3>About Us</h3>
<p>We started our company 1 month back, we had over 50 employees in our company who can be capable to provide security of all the user details</p>
<p>we have connection with many hotels so, we develop this web site to provide best hotels with cheap cost for the users</p> 
</div>
<div class="sidebar-element">
<h3>Speciality</h3>
	<ul>
		<li>High Genic Rooms</li>
		<li>Rooms with food facility</li>
		<li>Wifi Facility </li>
		<li>Tv</li>
	</ul>
</div>
</div>
</div>
</div>
<div id="footer">
<ul>
		<li><a href="homepage.jsp">Home</a></li>
		<li><a href="about.jsp">About</a></li>
		<li><a href="contact.jsp">Contact</a></li>
		<li><a href="registration.jsp" id="onlink">Register</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="gallery.jsp">Gallery</a></li>
	</ul>
<p>&copy;2019 HotelBooking.com</p>
</div>
</body>
</html>