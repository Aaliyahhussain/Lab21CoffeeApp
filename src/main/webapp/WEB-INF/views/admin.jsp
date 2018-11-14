<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>
	<h2>Edit an Item:</h2>
	
	<h3>Cafe Menu</h3>
	
	<form>
		<input name ="category" placeholder = "Category"/>
		<button>Filter</button>
	</form>

	<table>
		<tr>
			<th>Beverages</th><th>Category</th><th>Description</th>
		</tr>
		
		<c:forEach var = "drink" items = "${ drink }">
			<tr>
				<td>${ drink.name }</td>
				<td>${ drink.category }</td>
				<td>${ drink.description }</td>
				<td>${ drink.price }</td>
			</tr>
		</c:forEach>
	</table>
	
	<a href="/admin">Add Drink</a>
</body>
</html>