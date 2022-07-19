<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Gilboa.com - Login</title>

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	defer></script>
<!-- FONT-AWESOME -->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
<!-- BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	defer></script>
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
<link rel="stylesheet" href="/css/styles.css" />

</head>
<body>
	<section id="sectionLogin" class="pt-5">
		<h1 class="text-warning fw-bold text-center">Gilboa.com</h1>
		<div class="container-fluid p-3 vh-100">
			<div class="d-flex justify-content-around mx-auto">
				<!--____________________________________________Register__________________________________________-->
				<form:form action="/register" modelAttribute="newUser" method="post"
					class="col-4 p-4 bg-light opacity-75 text-dark my-5 rounded border border-dark border-2">
					<h2 class="text-primary m-1 fw-bold">Register</h2>
					<form:label path="email" class="fw-bold ">Email:</form:label>
					<div class="form-group fw-bold m-1">
						<form:errors path="email" class="text-danger" />
						<form:input type="email" path="email" />
					</div>
					<form:label path="password" class=" fw-bold ">Password:</form:label>
					<div class="form-group fw-bold m-1">
						<form:errors path="password" class="text-danger" />
						<form:input type="password" path="password" />
					</div>


					<form:label path="confirm" class="fw-bold ">Confirm Password:</form:label>
					<div class="form-group fw-bold m-1">
						<form:errors path="confirm" class="text-danger" />
						<form:input type="password" path="confirm" />
					</div>

					<div class="form-group fw-bold">
						<input type="submit" value="Register" class="btn btn-primary">
					</div>

				</form:form>

				<!--____________________________________Login_______________________________           -->
				<form:form action="/auth" modelAttribute="newLogin" method="post"
					class="col-4 p-4 bg-light opacity-75 mb-auto text-dark my-5 rounded border border-dark border-2">
					<h2 class="text-success">Login</h2>

					<form:label path="email" class="fw-bold ">Email</form:label>
					<div class="form-group fw-bold m-1">
						<form:errors path="email" class="text-danger" />
						<form:input type="text" path="email" />
					</div>

					<form:label path="password" class="fw-bold ">Password</form:label>
					<div class="form-group fw-bold m-1">
						<form:errors path="password" class="text-danger" />
						<form:input type="password" path="password" />
					</div>

					<input type="submit" value="Login" class="btn btn-success">
				</form:form>
			</div>
		</div>
	</section>
</body>