<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Manager App</title>
</head>
<body>
<div align="center">
	<h1>Customer Manager</h1>
	<form method="get" action="search">
		<input type="text" name="keyword" />
		<input type="submit" name="Search" />
	</form>
	<h3><a href="new">New Customer</a>
	<table border="1" padding="5">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>E-mail</th>
			<th>Address</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listCustomer}" var ="customer" >
		<tr>
			<td>${customer.id}</td>
			<td>${customer.name}</td>
			<td>${customer.email}</td>
			<td>${customer.address}</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>