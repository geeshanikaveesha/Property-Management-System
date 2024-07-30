<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
     <link rel="stylesheet" type="text/css" href="styles/login.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Feedback</title>
</head>
<body>
	 <div class="container">
      
		<div class="navbar"> 
		<img src="logo.png" class="logo1">
		<nav> 
			<ul> 
				<li><a href="home1.jsp">Home</a></li>
            <li><a href="contactus.jsp">Contact Us</a></li>
            <li><a href="aboutus.jsp">About Us</a></li> 
				
			</ul>
		</nav>
    </div>
    </div>
 
   <form action="feedbackInsertServlet" method="post"><br>
   <h2>Create Feedback</h2>
		
		Give Feedback Number <input type="text" name="fid" required><br>
		Email <input type="email" name="email" required><br>
		Message <br><textarea rows="4" cols="50" name="message" required></textarea><br><br>

		<input type="submit" name="submit" value="Add Feedback">
	</form>


   
    
</body>
</html>
    