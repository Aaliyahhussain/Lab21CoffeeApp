<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "/style.css" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>

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
  <li><a href="/home" href="#home">Home</a></li>
  <li><a href="/login">Login</a></li>
  <li><a href="/register">Register</a></li>
  <li><a href="/menu">Menu</a></li>
  <li><a href="/item">Admin</a></li>
  
</ul>

</body>
</html>

