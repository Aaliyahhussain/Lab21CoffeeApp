<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "/style.css" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<div class="container-fluid">
<h1>Please Register</h1>
<form action = "/confirmation">
		<p>
			<label>First Name:</label><br /><input id="firstname" name="firstname" required minlength="2" maxlength="15"/>
		</p>
		<p>
			<label>Last Name:</label><br> <input name="lastName" pattern="[A-Z][a-z]*" />
		</p>
		<p>
			<label>Email:</label><br> <input type="email" name="email" />
		</p>
		<p>
			<label>Phone Number:</label><br><input type="phonenumber" name="phonenumber" pattern="^(\d{3})(\d{3})(\d{4})$"/>
		</p>
		<p>
			<label>Password:</label><br><input type="password" name="password" />
		</p>
		<p>
			<button>Submit</button>
		</p>


</form>
</div>
</body>
</html>