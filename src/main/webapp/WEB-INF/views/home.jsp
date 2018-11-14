<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
​<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coffee Shop</title>
<link rel = "stylesheet" href = "/style.css" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>



<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:   #ffb366;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #fff2e6;
}


</style>
</head>
<body>

<h1>Welcome to Aaliyah's Cafe!</h1>

<ul>
  <li><a class="/home" href="#home">Home</a></li>
  <li><a href="/register">Register</a></li>
  <li><a href="/drink">Menu</a></li>
  <li><a href="/drink">Admin</a></li>
</ul>

</body>
</html>


<!-- </head>
<body>
	<form action="/register">
	<h1>Welcome to Aaliyah's Cafe!</h1>
	<p>
	
		<button>Register here!</button>
		
	
		
	</p>
	</form>
	<form action = "/drink-form">
		<button>add drink </button>
	</form>

	<form action = "/drink">
		<button>view menu </button>
	</form>

</body>
</html -->

