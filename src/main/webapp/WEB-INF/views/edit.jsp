<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/style.css" />
<meta charset="ISO-8859-1">
<title>add-item</title>
</head>
<style>
body, html {
	height: 100%
}
</style>
<body>
		<div>
			<div class="container">
				<h3>Add Item</h3>
				<form action="/DrinksMenu/${DrinksMenu.id}/edit" method="post">
					<table class="table table-sm">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Name</th>
								<th scope="col">Category</th>
								<th scope="col">Description</th>
								<th scope="col">Price</th>
							</tr>
						</thead>
						<tr class="table-success" id="items">
							<td><input type="text" name="name" value="${DrinksMenu.name}" /></td>
							<td><input type="text" name="category" value="${DrinksMenu.cateogry}" /></td>
							<td><input type="text" name="price" value="${DrinksMenu.price}" /></td>
							<td><input type="text" name="description" value="${DrinksMenu.description}" /></td>
						</tr>
					</table>
					<button id="add" class="btn btn-success">Update Item</button>
				<p>
					<a href="/DrinksMenu">Cancel</a>
				</p>
				</form>
			</div>
		</div>
</body>
</html>