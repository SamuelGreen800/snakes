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
<title>Gilboa.com/admin - Edit</title>
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
    /* background-image: url("/img/film4.jpg"); */
}

</style>


</head>

</head>
<body >
	<div class="px-5 pb-3">

		<div class=" col-7">

			<h1 class="py-4 text-success">Edit snake:</h1>
			
			<form:form action="/admin/${snake.id}" method="post" class="form opacity-75 form-control p-4" modelAttribute="snake">
						
							<div class="form-group  fw-bold d-flex justify-content-between my-5">
				            	<form:label path="name">Name:</form:label>
				            	<form:errors path="name" class="text-danger"/>
								<form:input class="input col-7" path="name" value="${snake.name }"/>
				            </div>
				            
				       		<div class="form-group d-flex fw-bold justify-content-between my-5">
				       			<form:label path="species">Species:</form:label>
				            	<form:errors path="species" class="text-danger"/>
								<form:input class="input col-7" path="species" value="${snake.species}"/>
				           </div>
				           
				           <div class="form-group d-flex fw-bold justify-content-between my-5">
				       			<form:label path="birthdate">Birth Date:</form:label>
				            	<form:errors path="birthdate" class="text-danger"/>
								<form:input class="input col-7" path="birthdate" value="${snake.birthdate }"/>
				           </div>
				           
				           <div class="form-group d-flex fw-bold justify-content-between my-5">
				       			<form:label path="sex">Sex:</form:label>
				            	<form:errors path="sex" class="text-danger"/>
								<form:input class="input col-7" path="sex" value="${snake.sex }"/>
				           </div>
				        
				        <div class="form-group d-flex fw-bold justify-content-between my-5">
				       			<form:label path="description">Description:</form:label>
				            	<form:errors path="description" class="text-danger"/>
								<form:textarea rows="4"  class="input col-7" path="description" value="${snake.description }"/>
				           </div>
				        	
				       
				        	<div class="form-group d-flex fw-bold justify-content-center">
				        		<input class="btn btn-success" type="submit" value="Update"/>
				       		</div>
				    
			
			</form:form>
			<h2 class="text-center"><a href="/admin" class="btn mt-4 btn-primary">Dashboard</a></h2>
			<h2 class="text-center"><a href="/admin/delete/${snake.id }" class="btn mt-4 btn-danger">Delete</a></h2>
		</div>
	</div>
</body>
</html>ml>