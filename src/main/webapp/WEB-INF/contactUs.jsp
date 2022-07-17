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
<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Gilboa.com - Contact</title>

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
<link rel="stylesheet" href="/css/styles.css" />

</head>
<body class="text-center">
	<section id="sectionContact">
		<!-- NAVBAR -->
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid mx-4">



				<a class="navbar-brand text-start" href="/"> <img
					src="/img/logos/Gilboacom-logos_white.png" class="top-logo"
					alt="logo" />
				</a>
				<button class="navbar-toggler border" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarText"
					aria-controls="navbarText" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse pb-5" id="navbarText">
					<ul class="navbar-nav ms-auto mb-4 mb-lg-0">
						<li class="nav-item dropdown px-5"><a
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

						
						<li class="nav-item px-5 pb-5"><a class="nav-link" href="/care">Care</a>
						</li>
						<li class="nav-item px-5"><a class="nav-link" href="/sales">Sales</a>
						</li>
						<li class="nav-item px-5"><a class="nav-link" href="contact">Contact</a>
						</li>


					</ul>
				</div>
			</div>
		</nav>


	</section>
	<div class="content container">
		<h1>Contact us:</h1>
		<p>We welcome all questions, comments, or suggestions!</p>
		<p>We are located in Sunny St Petersburg FL, and will happily supply an address for pickup via email.</p>
		<p><span class="fw-bold">Phone:</span> 1-727-not-done</p>
		<p><span class="fw-bold">Email:</span> ToothyNoodle@gilboa.com</p>
		<p>Or, just email us directly through the contact form below!</p>
	</div>


<div class="container mx-auto col-5">
<form:form action="/contact/email" method="post" class="m-2 form opacity-75 form-control p-4" enctype="multipart/form-data" modelAttribute="mail">
						<h1 class="text-center">Contact Us</h1>
							<div class="form-group  fw-bold d-flex justify-content-between my-5">
				            	<form:label path="name">Your Name:</form:label>
				            	<form:errors path="name" class="text-danger"/>
								<form:input class="input col-9" path="name"/>
				            </div>
				            
				       		<div class="form-group d-flex fw-bold justify-content-between my-5">
				       			<form:label path="email">Your Email:</form:label>
				            	<form:errors path="email" class="text-danger"/>
								<form:input class="input col-9" path="email"/>
				           </div>
				           
				           <div class="form-group d-flex fw-bold justify-content-between my-5">
				       			<form:label path="subject">Subject:</form:label>
				            	<form:errors path="subject" class="text-danger"/>
								<form:input class="input col-9" path="subject"/>
				           </div>
				           
				           <div class="form-group d-flex fw-bold justify-content-between my-5">
				       			<form:label path="message">Message:</form:label>
				            	<form:errors path="message" class="text-danger"/>
								<form:textarea class="input col-9" rows="9" path="message"/>
				           </div>

				        	<div class="form-group d-flex fw-bold justify-content-center">
				        		<input class="btn btn-success" type="submit" value="Submit"/>
				       		</div>
			
			</form:form>
				    </div>
				    
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



</body>
</html>
