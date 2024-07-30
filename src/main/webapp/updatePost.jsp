<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles/update.css"/>
	<meta charset="UTF-8">
	<title>Edit AD</title>
	<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
	</style>
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
	
	<div class="container1">
	<form action="updatePostServlet" method="post">
	<table>
		<tr>
			<td>Ad ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Property Owner Name</td>
			<td><input type="text" name="owner" value="<%= owner %>"></td>
		</tr>
		<tr>
		<td>Owner Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Owner Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>Property Address</td>
		<td><input type="text" name="address" value="<%= address %>"></td>
	</tr>
	<tr>
		<td>Property Description</td>
		<td><input type="text" name="desc" value="<%= desc %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update Ad">
	</form>
	</div>

</body>
</html>