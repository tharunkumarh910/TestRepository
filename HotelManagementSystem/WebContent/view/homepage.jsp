<%@ page contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hotel management System</title>
<style>
body { color: #3f312e ; font: 14px Helvetica, Arial,Sans-serif;}
a { color: #4f4f4f;}
#one { font-size: 60px; margin-top: 0; }
#one img { width: 100; hight: 100; padding-left: 130px; padding-top: 30px; clip: square(0px,60px,200px,0px); }
#header { width: 960px; min-height: 50px; margin: 0 auto; }
#navigation { width: 960px; margin: 0 auto; position: relative; bottom: 6px; }
#navigation ul { margin: 0; padding: 0;list-style-type: none; }
#navigation ul li { display: inline; margin-right: 2px; font-size: 12.5px; }
#navigation ul li a { background: #fbe49b; text-decoration: none; padding: 10px 10px 6px 10px; text-transform: uppercase; border-left: 1px solid #e4bc3f; border-top: 1px solid #e4bc3f; border-right: 1px solid #e4bc3f; background-color: #fbe49b; }
#navigation ul li.current_page_item a, #navigation ul li a:hover { color: #3f312e; border-left: 1px solid #fff; border-top: 1px solid #fff; border-right: 1px soli #fff; background: #fff; }
#navigation ul li a#onlink { background: #ffffff; color: #808080}
#navigation2 { width: 960px; margin: 0 auto; position: relative; bottom: 18px;  }
#navigation2 ul { margin: 0; padding: 0;list-style-type: none; }
#navigation2 ul li { display: inline; margin-right: 2px;float: right; }
#navigation2 input[type=text] { font-size: 17px; width:110px; border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000;}
#navigation2 input[type=date] { font-size: 17px; width:130px; border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000;}
#navigation2 input[type=submit] { color: black; background:#e4bc3f; }
input[type=text], input[type=password],input[type=email] ,textarea{ font-size: 17px;border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000;}
input[type=button] { color: black; background:#e4bc3f; } 
#container { overflow: auto; width: 960px; margin: 0 auto; padding: 10 px; border-style: solid; border-width: 5px;}

#content { width: 960px; min-height: 1500px; margin: 0 auto; background: #fff; }
#two img { width: 100; hight: 100; padding-left: 20px; padding-top: 30px; clip: square(0px,60px,200px,0px); }
#contentleft { width: 580px; float: left; margin-right: 20px; padding: 20px; }
#contentleft h1 { font-size: 24px; margin-top: 0; }
.cancel-button { position: center;}
.login-box { 
  color: #0066FF; 
  font-family:arial; 
  font-size: 25px; 
  
}
.login-button { display: inline-block;}
input[type=submit] { color: black; background:#c0c0c0; }
#sidebar { width: 280px;float:left; padding: 20px; }
.sidebar-element { overflow: auto; margin-top: 15px;}
#sidebar h3 { color: #fff; background: #53777a; padding: 7px 10px; text-transform: uppercase; font-size: 14px;  }
#sidebar ul { margin: 0; padding: 0; list-style-type: none; }
#sidebar ul li { margin: 0 0 7px 0; }
#footer { width: 960px; margin: 0 auto; text-align: center; }
#footer ul { margin: 15px 0 0 0; padding: 0; list-style-type: none;}
#footer ul li { display: inline; margin-right: 5px; }
#footer ul li a { text-transform: uppercase; text-decoration: none;}
#footer ul li a:hover { text-decoration: underline;  }
#footer p { font-weight: bold; }
div.polaroid {
  width: 30%;
  background-color: white;
  box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
  display: inline-block;
  padding: 10px;
  border: 1px solid black;
}
.overlay {
  position: relative; 
  bottom: 0; 
  background: rgb(0, 0, 0);
  background-color: #f8c807; 
  color: #004040; 
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: #bd4d02;
  font-size: 20px;
  padding: 0;
  text-align: center;
}
div.polaroid:hover img
{
	
	opacity: 0.3;
}
div.polaroid:hover .overlay {
  opacity: 1;
}

div.z {
  text-align: center;
  padding: 10px 20px;
}
</style>
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

