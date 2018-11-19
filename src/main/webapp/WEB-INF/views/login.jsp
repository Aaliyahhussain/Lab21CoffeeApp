<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "/style.css" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
<title>Login</title>
</head>
<body>
	<%@include file="partials.jsp" %>
	<h1>Login</h1>
	
	<p class="message">${ message }</p>
	
	<form action="/login" method="post">
		<p>
			<label for="username">Username:</label> <input id="username" name="username" value="${ param.username }" required minlength="2" />
		</p>		<p>
			<label for="password">Password:</label> <input id="password" type="password" name="password" required minlength="2" />
		</p>
		<p>
			<button>Submit</button>
		</p>
	</form>
	
</body>
</html>