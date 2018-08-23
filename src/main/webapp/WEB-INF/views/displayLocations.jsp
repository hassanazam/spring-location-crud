<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display locations</title>
</head>
<body>
	<h2>Locations</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>CODE</th>
			<th>NAME</th>
			<th>TYPE</th>
		</tr>
		<c:forEach items="${locations}" var="location">
		<tr>
			<td>${location.id}</td>
			<td>${location.code}</td>
			<td>${location.name}</td>
			<td>${location.type}</td>
			<td><a href="deleteLocation?id=${location.id}">Delete</a></td>
			<td><a href="editLocation?id=${location.id}">Edit</a></td>
		</tr>
		</c:forEach>
	</table>
	
	<a href="showCreate">Create Location</a>
</body>
</html>