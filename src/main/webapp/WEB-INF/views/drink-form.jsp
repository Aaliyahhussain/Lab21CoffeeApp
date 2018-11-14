<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Beverage:</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<main class="container">
		<a href="/Drink">Back</a>
		<h1>
			Add a Drink
			<img src="" class="d-none d-md-inline-block" />
		</h1>
		
		<form action="/add-food" method="post">
			<div class="form-group">
			    <label for="name">Name</label>
			    <input class="form-control" id="name" name="name" required minlength="2" autocomplete="off">
			</div>
			<div class="form-group">
			    <label for="category">Category</label>
			    <input class="form-control" id="category" name="category" required>
			</div>
			<div class="form-group">
			    <label for="description">Description</label>
			    <input class="form-control" id="description" name="description" required minlength="3">
			</div>
			<div class="form-group">
			    <label for="price">Price</label>
			    <input class="form-control" id="price" name="price" required minlength="3">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</main>
</body>
</html>