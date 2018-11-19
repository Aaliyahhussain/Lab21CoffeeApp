<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
<link rel = "stylesheet" href = "/style.css" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
</head>
<body>
	<h1>Congratulations ${ user.firstname}!</h1>
		
		<p>
		You are now registered. Return <a href="/home">home</a>.
		</p>


</body>
</html>