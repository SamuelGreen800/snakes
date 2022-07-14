<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Gilboa.com</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/css/styles.css" rel="stylesheet" />
</head>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- FONT-AWESOME -->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<!-- BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<!-- CSS -->
<link rel="stylesheet" href="/css/styles.css" />

<title>Gilboa.com - Home</title>
</head>
<body class="">
	<section id="sectionDashboard">
		<!-- NAVBAR -->
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid mx-4">



				<a class="navbar-brand text-start" href="/"> <img
					src="/img/logos/Gilboacom-logos_white.png" class="top-logo"
					alt="logo" />
				</a>
				<button class="navbar-toggler border text-dark" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarText"
					aria-controls="navbarText" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse pb-5 text-dark" id="navbarText">
					<ul class="navbar-nav text-dark ms-auto mb-4 mb-lg-0">
						<li class="nav-item text-dark dropdown px-5"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarScrollingDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">
								Species </a>
							<ul class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarScrollingDropdown">
								<li><a class="dropdown-item" href="/species">Amazon Basin Tree
										Boa</a></li>
								<li><a class="dropdown-item" href="/species">Green Tree Python</a></li>
							</ul></li>

						
						<li class="nav-item px-5 pb-5" id="darkLink"><a class="nav-link" href="/care">Care</a>
						</li>
						<li class="nav-item px-5" id="darkLink"><a class="nav-link" href="/sales">Sales</a>
						</li>
						<li class="nav-item px-5" ><a class="nav-link" id="darkLink" href="/contact">Contact</a>
						</li>


					</ul>
				</div>
			</div>
		</nav>


	</section>
	<div class="content justify-content-start ">
		<div class="">
	
		<div class="col-12 py-3 px-5" id="adminBg">
			<h1>Welcome, <c:out value="${user.email}"></c:out>!</h1>
			<h2>Dashboard</h2>
		</div>
	
	
	<div class=" col-6 my-1 mx-5 justify-content-start border border-success p-2 bg-light">
			<h5>All Snakes:</h5>
		<table class="table table-striped table-light  shadow-lg p-3 my-3">
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
	
	
	<div class=" d-flex justify-content-between">
	<a href="/admin/new" class="btn text-center btn-primary">Add a snake</a>
	<a href="/sales" class="btn text-center btn-info">Sales page</a>
		<a href="/logout" class="btn text-center fw-boldtext-dark btn-danger">Logout</a>
	</div>
</div>
	
</div>
	</div>

	<div class="text-center m-5">
	</div>
</body>
</html>
