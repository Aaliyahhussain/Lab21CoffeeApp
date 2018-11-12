<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
​<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cafe Menu</title>
<link rel = "stylesheet" href = "/list.css" />
</head>
<body>
	<h1>Cafe Menu</h1>
	
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
			</tr>
		</c:forEach>
	</table>
	
	<a href="/add-drink">Add Drink</a>
</body>
</html>