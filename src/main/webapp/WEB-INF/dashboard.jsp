<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gilboa.com/admin - Dashboard</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<style>

</style>

</head>

<body class="mx-auto">
	
		<div class="col-12 text-center p-4">
			<h1>Welcome, <c:out value="${user.email}"></c:out>!</h1>
			<h2>All Snakes:</h2>
		</div>
	
	
	<div class="container col-6 my-1 mx-auto border border-secondary p-4 bg-light">
		<table class="table table-striped table-light  shadow-lg p-3 my-3 rounded">
			<tr>
				<th>Name</th>
				<th>Species</th>
				<th>Birthdate</th>
				<th>Actions</th>
			</tr>
			
			<c:forEach var="eachSnake" items="${snakes}">
			
				<tr>
					<td><a href="/admin/view/${eachSnake.id}" class="text-dark"><c:out value="${eachSnake.name}"/></a></td>
					<td><c:out value="${eachSnake.species}"/></td>
					<td><c:out value="${eachSnake.birthdate}"/></td>
					<td><a href="/admin/${eachSnake.id}" class="text-dark">Edit</a></td>
					
				
				</tr>
			</c:forEach>
		</table>
	
	
	<div class="text-center">
	<a href="/admin/new" class="btn text-center btn-primary">Add a snake!</a>
	</div>
</div>
	<div class="text-center">
		<a href="/logout" class="btn text-center btn-sm text-dark btn-danger">Logout</a>
	</div>
	
</body>

</html>