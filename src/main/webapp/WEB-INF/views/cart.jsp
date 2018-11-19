<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "/style.css" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
<title>Cart</title>
</head>
<body>
<c:forEach var = "cartItem" items=${cartItems}> 
Quantity: ${cartItem.quantity}
Name: ${cartItem.menuItem.name}
Price: ${cartItem.menuItem.price }
</c:forEach>
</body>
</html>