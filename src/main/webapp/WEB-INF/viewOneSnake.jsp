<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Gilboa.com</title>

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" defer></script>
<!-- FONT-AWESOME -->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
<!-- BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"/>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
defer></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous" defer></script>
<link rel="stylesheet" href="/css/styles.css" />

</head>

</head>
<body>





<section id="sectionView" class="pt-3">
			<h1 class="text-center text-secondary">Details</h1>
					<div class="card mx-auto mb-1 border-4 border-dark" style="width: 40rem;">
  <img class="card-img-top" style="max-height: 60rem;" src="<c:out value="${oneSnake.photosImagePath}"></c:out>" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title my-4"><span class="fw-bold">Name: </span> <c:out value="${oneSnake.name}"></c:out> </h5>
    <p class="card-text"><span class="fw-bold">Species:  </span><c:out value="${oneSnake.species}"></c:out></p>
    <p class="card-text"><span class="fw-bold">Birthdate:  </span><c:out value="${oneSnake.birthdate}"></c:out></p>
    <p class="card-text"><span class="fw-bold">Sex:  </span><c:out value="${oneSnake.sex}"></c:out></p>
    <p class="card-text"><span class="fw-bold">Price:  </span><c:out value="${oneSnake.price}"></c:out></p>
    <p class="card-text"><span class="fw-bold">Description:  </span><c:out value="${oneSnake.description}"></c:out></p>
	
		</div>	
			<div class="d-flex container mt-5 mb-1 justify-content-between">
				<a class="btn btn-primary" href="/admin">Dashboard</a> 
				
					 <a class="btn btn-warning" href="/admin/${oneSnake.id}">Edit Snake</a>
			</div>
  </div>
					
				
			</section>

<div class="footer-basic">
		<footer>
			<div class="social">
				<a href="http://www.instagram.com"><i
					class="fa-brands fa-instagram-square"></i></a><a
					href="http://www.snapchat.com"><i
					class="fa-brands fa-snapchat-square"></i></a><a
					href="http://www.twitter.com"><i
					class="fa-brands fa-twitter-square"></i></a><a
					href="http://www.facebook.com"><i
					class="fa-brands fa-facebook-square"></i></a>
			</div>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="/">Home</a></li>
				<li class="list-inline-item"><a href="/species">Species</a></li>
				<li class="list-inline-item"><a href="/care">Care</a></li>
				<li class="list-inline-item"><a href="/sales">Sales</a></li>
				<li class="list-inline-item"><a href="/contact">Contact</a></li>
			</ul>
			<p class="copyright">Gilboa.com © 2021</p>
		</footer>
	</div>
	
</body>
</html>