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
			First Name:<input name = "fName" />
		</p>
		<p>
			Last Name:<input name = "lName" />
		</p>
		<p>
			Email:<input name = "email" />
		</p>
		<p>
			Phone Number:<input name="PhoneNumber" type="PhoneNumber"/>
		</p>
		<p>
			Password:<input name = "password" type = "password" />
		</p>
		<p>
			<button>Register</button>
		</p>


	</form>
</body>
</html>