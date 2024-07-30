<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	 <link rel="stylesheet" type="text/css" href="styles/update.css"/>
	<meta charset="UTF-8">
	<title>Remove CardDetails</title>
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

	<h1>Report Details Delete</h1>

	<div class="container1">
	<form action="deletecard" method="post">
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Card Number</td>
			<td><input type="text" name="cardno" value="<%= cardno %>" readonly></td>
		</tr>
		<tr>
		<td>Holder Name</td>
		<td><input type="text" name="name" value="<%= name %>" readonly></td>
	</tr>
	<tr>
		<td>Exp.Date</td>
		<td><input type="text" name="edate" value="<%= edate %>" readonly></td>
		</tr>
	<tr>
		<td>CVV Number</td>
		<td><input type="text" name="cvv" value="<%= cvv %>" readonly></td>
		</tr>	
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account">
	</form>
	</div>

</body>
</html>