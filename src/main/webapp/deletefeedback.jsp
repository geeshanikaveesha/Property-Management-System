<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	 <link rel="stylesheet" type="text/css" href="styles/profile.css"/>
	<meta charset="UTF-8">
	<title>delete Feedback</title>
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

	<%
	String id = request.getParameter("id");
	String fid = request.getParameter("fid");
	String email = request.getParameter("email");
	String message = request.getParameter("message");
	%>

	<h1>Feedback Details </h1>

	<div class="container1">
	<form action="deleteServlet" method="post">
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Report Id</td>
			<td><input type="text" name="fid" value="<%= fid %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Message</td>
		<td><input type="text" name="message" value="<%= message %>"></td>
		</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Feedback">
	</form>
	</div>

</body>
</html>