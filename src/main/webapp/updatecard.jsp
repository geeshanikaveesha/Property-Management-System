<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles/update.css"/>
	<meta charset="UTF-8">
	<title>Update Card Details</title>
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
		String cardno = request.getParameter("cardno");
		String name = request.getParameter("name");
		String edate = request.getParameter("edate");
		String cvv = request.getParameter("cvv");
		
	%>
	
	<div class="container1">
	<form action="updatecard" method="post">
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Card Number</td>
			<td><input type="text" name="cardno" value="<%= cardno %>"></td>
		</tr>
		<tr>
		<td>Holder Name</td>
		<td><input type="text" name="name" value="<%= name %>"></td>
	</tr>
	<tr>
		<td>Exp.Date </td>
		<td><input type="date" name="edate" value="<%= edate %>"></td>
		</tr>
	<tr>
		<td>CVV Number</td>
		<td><input type="text" name="cvv" value="<%= cvv %>"></td>
		</tr>
	
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>
	</div>

</body>
</html>