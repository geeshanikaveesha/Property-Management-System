<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles/profile.css"/>
	<meta charset="ISO-8859-1">
	<title>Feedback List</title>
	
	
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
	<c:forEach var="feedback" items="${Details}">
	
	<c:set var="id" value="${feedback.id}"/>
	<c:set var="fid" value="${feedback.fid}"/>
	<c:set var="email" value="${feedback.email}"/>
	<c:set var="message" value="${feedback.message}"/>

	<tr>
		<td>ID</td>
		<td>${feedback.id}</td>
	</tr>
	<tr>
		<td>Feedback ID</td>
		<td>${feedback.fid}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${feedback.email}</td>
	</tr>
	<tr>
		<td>Message</td>
		<td>${feedback.message}</td>
	</tr>
	</c:forEach>
	</table>
	
	<c:url value="updatefeedback.jsp" var="fupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fid" value="${fid}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="message" value="${message}"/>
	
	</c:url>
	
	</div>
	
	<div class="button-container">
	<a href="${fupdate}">
	<input type="button" name="update" value="Update Feedback">
	</a>
	
	<br>
	<br>
	<br>
	<c:url value="deletefeedback.jsp" var="fdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="fid" value="${fid}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="message" value="${message}"/>
	</c:url>
	<a href="${fdelete}">
	<input type="button" name="delete" value="Delete Feedback">
	</a>
	</div>
	
	
</body>
</html>