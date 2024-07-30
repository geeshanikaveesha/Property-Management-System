<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    
     <link rel="stylesheet" type="text/css" href="styles/addcard.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Add Card Details</title>
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
<br>
   
<center>
   		<form action="Cardinsert" method="post"><br class = "center">
   		
		Card Number <input type="text" name="cardno" required><br>
		Holder Name <input type="text" name="name" required><br>
		Expire Date <input type="date" name="edate" required><br>
		Cvv	Number <input type="text" name="cvv" required><br><br>
		
		<input type="submit" name="submit" value="Add Card Details">
		</form>
	   
</center>	
   
</body>
</html>
    