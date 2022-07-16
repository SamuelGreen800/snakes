<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Snake</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous" defer></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous" defer></script>


<style>
body {
	
}
</style>

</head>
<body>






	<div class="p-4 px-5 opacity-75">


		<div class="p-4 bg-light col-7">
			<div class="card card-body">
				<h1 class="mb-5">Snake Details:</h1>

				<div class="d-flex col-5 my-2 justify-content-between">
					<div class=" fw-bold col-4">Name:</div>
					<div class="col-7">
						<c:out value="${oneSnake.name}"></c:out>
					</div>
				</div>

				<div class="d-flex col-5 my-2 justify-content-between">
					<div class="fw-bold col-4">Species:</div>
					<div class="col-7">
						<c:out value="${oneSnake.species}"></c:out>
					</div>
				</div>

				<div class="d-flex col-5 my-2 justify-content-between">
					<div class="fw-bold col-4">Birthdate</div>
					<div class="col-7">
						<c:out value="${oneSnake.birthdate}"></c:out>
					</div>
				</div>

				<div class="d-flex col-5 my-2 justify-content-between">
					<div class="fw-bold col-4">Sex</div>
					<div class="col-7">
						<c:out value="${oneSnake.sex}"></c:out>
					</div>
				</div>

				<div class="d-flex col-5 my-2 justify-content-between">
					<div class="fw-bold col-4">Description</div>
					<div class="col-7">
						<c:out value="${oneSnake.description}"></c:out>
					</div>
				</div>
				
				<div class="d-flex col-5 my-2 justify-content-between">
					<div class="fw-bold col-4">Photos</div>
					<div class="col-7">
						<c:out value="${oneSnake.photos}"></c:out>
					</div>
					
					<img src='<c:out value="${oneSnake.photosImagePath}"></c:out>'>
				</div>
					
					
				
	<div class="m-3">
				<form action="/admin/img/${oneSnake.id }" method="post" enctype="multipart/form-data">
				<input type="file" name="image">
				<input type="hidden" name="name" value="${ oneSnake.name}"/>
				<input type="hidden" name="species" value="${ oneSnake.species}"/>
				<input type="hidden" name="birthdate" value="${ oneSnake.birthdate}"/>
				<input type="hidden" name="sex" value="${ oneSnake.sex}"/>
				<input type="hidden" name="description" value="${ oneSnake.description}"/>
				<input type="submit" value="upload"/>
				
				</form>
		</div>	

			<div class="d-flex m-4 justify-content-between">
				<a class="btn btn-primary" href="/admin">Dashboard</a> <a
					class="btn btn-warning" href="/admin/${oneSnake.id}">Edit Snake</a>
			</div>

		</div>
	</div>