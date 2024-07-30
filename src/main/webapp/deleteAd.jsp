<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	 <link rel="stylesheet" type="text/css" href="styles/login.css"/>
	<meta charset="UTF-8">
	<title>Delete Post AD</title>
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
		String owner = request.getParameter("owner");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String desc = request.getParameter("desc");
	%>

	<h1>Delete Advertisement</h1>

	<div class="container1">
	<form action="deleteAdServlet" method="post">
	<table>
		<tr>
			<td>AD ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Owner Name</td>
			<td><input type="text" name="owner" value="<%= owner %>" readonly></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>" readonly></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" name="address" value="<%= address %>" readonly></td>
	</tr>
	<tr>
		<td>Description</td>
		<td><input type="text" name="desc" value="<%= desc %>" readonly></td>
	</tr>			
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My AD">
	</form>
	</div>

</body>
</html>