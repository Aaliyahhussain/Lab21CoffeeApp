<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "/style.css" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
<title>Menu</title>
</head>
<body>

<style>
	table, td, th {
	border: 1px solid #A9A9A9;
	text-align: left;
	}
	table {
	border-collapse: collapse;
	width: 75%;
	}
	th, td {
	padding: 15px;
	}
	</style>
	<form>
		<input name ="category" placeholder = "Category"/>
		<button>Filter</button>
	</form>
	
	<table>
		<tr><th id ="top" colspan = "3">Menu </th></tr>
		<tr id="cats">
			<th>Item</th><th>Category</th><th>Description</th><th>Price</th><th>Add</th>
		</tr>
		
		<tr>
		<c:forEach var="menuItem" items= "${ menu }">
			<td>${ menuItem.name }<c:if test="${not empty admin}">
		    <a href="/menu/edit?id=${menuItem.id }" class="btn btn-secondary mb-2">Edit</a>
		    <a href="/menu/delete?id=${ menuItem.id }" class="btn btn-secondary mb-2">Delete</a>
	  	  </c:if>
	  	  <td>${menuItem.description }</td>
	  	  <td> <fmt:formatNumber value = "${menuItem.price}" 
       	  type = "currency"/>	</td>
       	  <td><a href="/add?id=${menuItem.id }" class="btn btn-secondary mb-2">Add to Cart</a></td>
		</tr>
		</c:forEach>
		<tr><td colspan="3" id = "bottom"><form action="/single" >Search<br><input name="searchname"/>
		<div id= "display">${error}</div></form>
		<form action="/menu"><br><button id="mainmenu">Main Menu</button></form></td></tr>
		<c:if test="${not empty admin}">
		  <tr><td colspan="3"><form action="/menu/create"><br><button id="edit">Add An Item</button></form></td></tr>
	  	</c:if>
	</table>
</body>
</html>
