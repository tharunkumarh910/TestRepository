<%@ page contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="style.css" />
</head>
<body>
<div id="one"><img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" width="100" height="100">HOTEL BOOKING.COM</div>
<div id="header"></div>
<div id="navigation">
	<ul>
		<li><a href="homepage.jsp" >Home</a></li>
		<li><a href="about.jsp">About</a></li>
		<li><a href="contact.jsp">Contact</a></li>
		<li><a href="gallery.jsp" id="onlink">gallery</a></li>
		<li><a href="registration.jsp">Register</a></li>
		<li><a href="login.jsp">Login</a></li>
	<div id="navigation2"><form action=""><ul><li><input type="submit" name="submit" value="search"></li>
		<li><input type="date" name="from date" placeholder="from date"></li>
		<li><input type="date" name="end date" placeholder="end date"></li>
		<li><input type="text" name="location" placeholder="location"></li>
			</ul></form></div>		
	</ul>
	<br>
</div>
<div id="container">
<div id="content">
<div id="contentleft">
<h2>Images</h2>

<div class="polaroid">
  <img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" style="width:100%">
  <div class="overlay">hotel paradise</div>
  <div class="z">
  <p>Cinque Terre</p>
  </div>
</div>

<div class="polaroid">
  <img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" style="width:100%">
  <div class="overlay">hotel taj</div>
  <div class="z">
  <p>Northern Lights</p>
  </div>
</div>

<div class="polaroid">
  <img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" style="width:100%">
  <div class="overlay">blue stone hotel</div>
  <div class="z">
  <p>Northern Lights</p>
  </div>
</div>

<div class="polaroid">
  <img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" style="width:100%">
  <div class="overlay">dream land hotel</div>
  <div class="z">
  <p>Northern Lights</p>
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
		<li><a href="registration.jsp">Register</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="gallery.jsp" id="onlink">Gallery</a></li>
	</ul>
<p>&copy;2019 HotelBooking.com</p>
</div>
</body>
</html>