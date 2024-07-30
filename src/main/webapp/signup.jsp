<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
     <link rel="stylesheet" type="text/css" href="styles/login.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Account Create</title>
</head>
<body>
	 <div class="container">
      
		<div class="navbar"> 
		<img src="logo.png" class="logo1">
		<nav> 
			<ul> 
				<li><a href="home.jsp">Home</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            
				
			</ul>
		</nav>
    </div>
    </div>
   
   <form action="insert" method="post">
   <h2>Create Acccount</h2>
		Name <input type="text" name="name" required><br>
		Email <input type="email" name="email" required><br>
		Phone Number <input type="text" name="phone" required><br>
		User Name <input type="text" name="uid" required><br>
		Password <input type="password" name="psw" required><br><br>
		
		<input type="submit" name="submit" value="Create user">
	</form>
    
</body>
</html>
    