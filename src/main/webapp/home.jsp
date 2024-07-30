<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <title>Home Page</title>
  <link rel="stylesheet" href="styles/home.css">
</head>
<body>
<script src="styles/script.js" type="text/javascript"></script>
  <header id="navbar">
	<div >
	<img src="images/logo1.png" alt="LOGO" class = "logo1" onclick="openHomePage()" >
	</div>
    <nav class="menu">
	
      <a href="#" class="active">Home</a>
      <a href="createAd.jsp">Post Property</a>
      <a href="createfeedback.jsp">Feedback</a>
      <a href="aboutus.jsp">About Us</a>
      <button class="btnLogin" onclick="openLoginPage()">Login</button>
      <button class="btnsign" onclick="openRegisterPage()">Register</button>
    </nav>
    
  </header>
  
<figure>
	<div class = "slider-wrapper">
		<div class ="slider">
			<img src="images/p2.png" id = "slide1">
			<img src="images/p1.png" id = "slide2">
			
		</div>
	</div>
</figure>


<section class = "home" id = "home">
	<div class = "text">
		<h1><span>Looking</span> For <br/>Property ?</h1>
		<p>Easy Management With Our App</p>
			<img src= "images/appstore.png" alt = "appstore" class = "appstore" onclick="openappstore()">
			<img src ="images/playstore.png" alt = "playstore" class = "playstore" onclick="openplaystore()">
</section>



<section class="welcome">
  <div class="welcome-content">
    <h2> Welcome to Our Property Management System!</h2>
	<br/>
    <p>"Efficiently managing your properties and tenants is key to success in real estate. Our property management system streamlines your operations, providing a seamless experience for you and your tenants, so you can focus on what matters most - growing your real estate investments."</p>
  </div>
  <br/><br/>
  <div class= "btnmakereservation">
	<button class="btnreserve" onclick="window.location.href = 'createAd.jsp';">Post Property</button>
	<button class="btnpostad" onclick=" window.location.href = 'AddCard.jsp';">Add Payment<button>
  </div>
</section>

	

<footer class ="footer" id= "footer">
 
 
	  <p> 2023 Online Property.Â© All rights reserved.</p>
 
  <div class="social-icons"> 
    <a href="https://www.facebook.com"><img src="images/fb.png" alt="Facebook"></a>
    <a href="https://www.gmail.com"><img src="images/gmail.png" alt="Gmail"></a>
    <a href="https://web.whatsapp.com/"><img src="images/whatsapp.png" alt="WhatsApp"></a>
	<a href="https://twitter.com/"><img src="images/twitter.png" alt="twitter"></a>
	
  </div>
  <div class="privacy">
    <a href="#">Privacy</a>
    <a href="#">Terms And Conditions</a>
  </div>
  
</footer>

</body>
</html>
