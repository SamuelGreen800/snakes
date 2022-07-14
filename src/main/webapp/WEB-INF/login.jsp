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
<title>Sign In</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous" defer></script>

<style>
body {
    /* background-image: url("/img/film2.webp"); */
}

</style>
</head>
<body>

	 <div class="container-fluid p-3 vh-100">
 		<h1  class="text-center text-dark fw-bold text-decoration-underline my-4">Welcome to Gilboa.com</h1>
        <h3 class="text-center text-dark fw-bold text-decoration-underline">Please sign in or register.</h3>
        <div class="d-flex justify-content-around mx-auto">
<!--____________________________________________Register__________________________________________-->        
        <form:form action="/register" modelAttribute="newUser" method="post" class="col-4 p-4 bg-light opacity-85 text-dark my-5 rounded border border-dark border-2">
            <h2 class="text-primary m-1 fw-bold">Register</h2>
	        	<form:label path="email" class="fw-bold ">Email:</form:label>
            <div class="form-group fw-bold m-1">
	             <form:errors path="email" class="text-danger"/>
	        	<form:input type="email" path="email"/>
	       </div>
	        	<form:label path="password" class=" fw-bold ">Password:</form:label>
	         <div class="form-group fw-bold m-1">    
				<form:errors path="password" class="text-danger"/>
	        	<form:input type="password" path="password"/>
	        	</div>
	        	
	        
	        	<form:label path="confirm" class="fw-bold ">Confirm Password:</form:label>
	        <div class="form-group fw-bold m-1">
	        	<form:errors path="confirm" class="text-danger"/>
	        	<form:input type="password" path="confirm"/>
        	</div>
           
           <div class="form-group fw-bold">
         	  <input type="submit" value="Register" class="btn btn-primary">
          </div>
        	
        </form:form>

        <!--____________________________________Login_______________________________           -->
        <form:form action="/auth" modelAttribute="newLogin" method="post" class="col-4 p-4 bg-light opacity-85 mb-auto text-dark my-5 rounded border border-dark border-2">
            <h2 class="text-success">Login</h2>
			
	        	<form:label path="email" class="fw-bold ">Email</form:label>
			<div class="form-group fw-bold m-1">
	            <form:errors path="email" class="text-danger"/>
	        	<form:input type="text" path="email"/>
            </div>
            
	        	<form:label path="password" class="fw-bold ">Password</form:label>
            <div class="form-group fw-bold m-1">
	            <form:errors path="password" class="text-danger"/>
	        	<form:input type="password" path="password"/>
        	</div>
            
            <input type="submit" value="Login" class="btn btn-success">
        </form:form>
    </div>
    </div>

</body>
