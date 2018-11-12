<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>
<p>Please fill out this form</p>
	<form action="/user">
		<p>
			<label>First Name:</label><br /><input id="FirstName" name="FirstName" required minlength="2" maxlength="15"/>
		</p>
		<p>
			<label>Last Name:</label><br> <input name="LastName" pattern="[A-Z][a-z]*" />
		</p>
		<p>
			<label>Email:</label><br> <input type="email" name="email" />
		</p>
		<p>
			<label>Age:</label><br><input type="number" name="Age" min="1" max="200" step="1"/>
		</p>
		<p>
			<label>Phone Number:</label><br><input type="PhoneNumber" name="PhoneNumber" pattern="^(\d{3})(\d{3})(\d{4})$"/>
		</p>
		<p>
			<label>Password:</label><br><input type="password" name="password" />
		</p>
		<p>
			<button>Submit</button>
		</p>


	</form>
</body>
</html>


		
		
