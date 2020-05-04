<%@ page contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hotel management System</title>
<link rel="stylesheet" type="text/css"  href="style.css" />
</head>

<body>
<div class="bg">
<div id="one"><img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" width="100" height="100">HOTEL BOOKING.COM</div>
<div id="header"></div>
	
<div id="navigation">
	<ul>
		<li><a href="homepage.jsp" id="onlink">Home</a></li>
		<li><a href="/view/about.jsp">About</a></li>
		<li><a href="contact.jsp">Contact</a></li>
		<li><a href="gallery.jsp">Gallery</a></li>
		<li><a href="registration.jsp">Register</a></li>
		<li><a href="login.jsp">Login</a></li><br>
		<div id="navigation2"><form action=""><ul><li><input type="submit" name="submit" value="search"></li>
		
		<li><input type="date" name="end date" placeholder="end date"></li>
		<li><input type="date" name="from date" placeholder="from date"></li>
		<li>
		<select id="Country"  name="Country">
        <option value="000" selected="selected">[location]</option>
        <option value="008">Albania</option>
        <option value="012">Algeria</option>
        <option value="016">American Samoa</option>
        <option value="020">Andorra</option>
        <option value="024">Angola</option>
        <option value="660">Anguilla</option>
        <option value="010">Antarctica</option>
        <option value="028">Antigua And Barbuda</option>
        <option value="032">Argentina</option>
        <option value="051">Armenia</option>
        <option value="533">Aruba</option>
    </select>
		</li>
			</ul></form></div>	
	</ul>
  <br>
</div>
		 
<div id="container">
<div id="content">
<div id="contentleft">
<h1>Welcome To Our Web Site</h1><br><br>
<p>Welcome To Our Web Site! </p>
<p>Need help with booking a hotel? Right from picking out the ideal hotel to planning a perfect vacation with your beloved.</p>
<p> get the best hotel booking tips from this web site</p>
<h2>list of hotels</h2>
<div class="polaroid">
  <img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" style="width:100%">
  <div class="z">
  <p>Cinque Terre</p>
  </div>
</div>

<div class="polaroid">
  <img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" style="width:100%">
  <div class="z">
  <p>Northern Lights</p>
  </div>
</div>

<div class="polaroid">
  <img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" style="width:100%">
  <div class="z">
  <p>Northern Lights</p>
  </div>
</div>

<div class="polaroid">
  <img src="C:/Users/sathish/Desktop/htlmngmnt project/b.png" style="width:100%">
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
		<li><a href="homepage.jsp" id="onlink">Home</a></li>
		<li><a href="about.jsp">About</a></li>
		<li><a href="contact.jsp">Contact</a></li>
		<li><a href="registration.jsp">Register</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="gallery.jsp">Gallery</a></li>
	</ul>
<p>&copy;2019 HotelBooking.com</p>
</div>
</div>
</body>
</html>

