<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles/profile.css"/>
	<meta charset="ISO-8859-1">
	<title>View AD</title>
	
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
	<c:forEach var="ad" items="${details}">
	
	<c:set var="id" value="${ad.id}"/>
	<c:set var="owner" value="${ad.ownername}"/>
	<c:set var="email" value="${ad.email}"/>
	<c:set var="phone" value="${ad.phone}"/>
	<c:set var="address" value="${ad.address}"/>
	<c:set var="desc" value="${ad.description}"/>
	<tr>
		<td style="background-color: black; color: white;">Advertisement</td>
		<td style="background-color:black;"></td>
		
	</tr>
	<tr>
		<td>Ad ID</td>
		<td>${ad.id}</td>
	</tr>
	<tr>
		<td>Property Owner Name </td>
		<td>${ad.ownername}</td>
	</tr>
	<tr>
		<td>Email </td>
		<td>${ad.email}</td>
	</tr>
	<tr>
		<td>Phone Number </td>
		<td>${ad.phone}</td>
	</tr>
	<tr>
		<td>Property Address </td>
		<td>${ad.address}</td>
	</tr>
	<tr>
		<td>Property Description </td>
		<td>${ad.description}</td>
	</tr>
	
	</c:forEach>
	
	</table>
	
	<c:url value="updatePost.jsp" var="adupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="owner" value="${owner}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="desc" value="${desc}"/>
	</c:url>
	
	</div>
	
	<div class="button-container">
	<a href="${adupdate}">
	<input type="button" name="update" value="Update Post">
	</a>
	
	<br>
	<br>
	<br>
	<c:url value="deleteAd.jsp" var="addelete">
		<c:param name="id" value="${id}"/>
		<c:param name="owner" value="${owner}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="desc" value="${desc}"/>
	</c:url>
	<a href="${addelete}">
	<input type="button" name="delete" value="Delete Post">
	</a>
	</div>
	
	
</body>
</html>