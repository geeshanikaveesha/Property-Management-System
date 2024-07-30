<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
     <link rel="stylesheet" type="text/css" href="styles/login.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Create Property AD</title>
</head>
<body>
	 <div class="container">
      
		<div class="navbar"> 
		<img src="logo.png" class="logo1">
		<nav> 
			<ul> 
		<li><a href="home.jsp">Home</a></li>
                    <li><a href="createfeedback.jsp">Feedback</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
				
			</ul>
		</nav>
    </div>
    </div>
   
   <form action="postadServlet" method="post">
   <h2>Create Advertisement</h2>
		Property Owner <input type="text" name="owner" required><br>
		Email <input type="email" name="email" required><br>
		Phone Number <input type="text" name="phone" required><br>
		Property Address <input type="text" name="address" required><br>
		Description<br> <textarea rows="4" cols="170" name="desc" required></textarea><br>
		<br>
		<input type="submit" name="submit" value="Post AD">
	</form>
    
</body>
</html>
    