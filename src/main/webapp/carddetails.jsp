<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles/profile.css"/>
	<meta charset="ISO-8859-1">
	<title>Card Details</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
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
    <br>
	<br>
	<br><br>
	<br>
	<br>

	<div class="container1">
	<table>
	<c:forEach var="card" items="${details}">
	
	<c:set var="id" value="${card.id}"/>
	<c:set var="cardno" value="${card.cardno}"/>
	<c:set var="name" value="${card.holdername}"/>
	<c:set var="edate" value="${card.date}"/>
	<c:set var="cvv" value="${card.cvv}"/>
	
	<tr>
		<td>ID</td>
		<td>${card.id}</td>
	</tr>
	<tr>
		<td>Card Number </td>
		<td>${card.cardno}</td>
	</tr>
	<tr>
		<td>Holder Name </td>
		<td>${card.holdername}</td>
	</tr>
	<tr>
		<td>Exp.Date </td>
		<td>${card.date}</td>
	</tr>
	<tr>
		<td>CVV Number </td>
		<td>${card.cvv}</td>
	</tr>
	</c:forEach>
	</table>
	
	<c:url value="updatecard.jsp" var="cupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="cardno" value="${cardno}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="edate" value="${edate}"/>
		<c:param name="cvv" value="${cvv}"/>
	</c:url>
	
	</div>
	
	<div class="button-container">
	<a href="${cupdate}">
	<input type="button" name="update" value="Update Card Details">
	</a>
	
	<br>
	<br>
	<br>
	<c:url value="deletecard.jsp" var="cdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="cardno" value="${cardno}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="edate" value="${edate}"/>
		<c:param name="cvv" value="${cvv}"/>
	</c:url>
	<a href="${cdelete}">
	<input type="button" name="delete" value="Remove Card Details">
	</a>
	</div>
	
	
</body>
</html>