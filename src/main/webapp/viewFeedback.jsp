<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
     <link rel="stylesheet" type="text/css" href="styles/login.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <meta charset="ISO-8859-1">
    <title>Feedback View</title>
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
    <div class="container1">
        <form action="feedbackServlet" method="post">
            <h2>View Feedback</h2>
            <div class="input-container">
                <label for="fid">Feedback Id:</label>
                <input type="text" id="fid" name="fid" required>
             </div>
            <button type="submit">View</button>
        </form>
    </div>
</body>
</html>
    