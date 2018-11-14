<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="/style.css" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>

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


		
		
<!-- <h1>Floating Labels</h1>
<h2>Please fill in the form:</h2>
<form>
<div class="floating-placeholder">
  <label>First Name:</label><br /><input id="FirstName" name="FirstName" required minlength="2" maxlength="15"/>
</div>
<div class="floating-placeholder">
 <label>Last Name:</label><br> <input name="LastName" pattern="[A-Z][a-z]*" />
</div>
<div class="floating-placeholder">
 <label>Email:</label><br> <input type="email" name="email" />
</div>
<div class="floating-placeholder">
  <label>Age:</label><br><input type="number" name="Age" min="1" max="200" step="1"/>
</div>
<div class="floating-placeholder">
  <label>Phone Number:</label><br><input type="PhoneNumber" name="PhoneNumber" pattern="^(\d{3})(\d{3})(\d{4})$"/>
</div>
<div class="floating-placeholder">
  <label>Password:</label><br><input type="password" name="password" />
</div>
</form>
<a href="https://codepen.io/lbebber/">by Lucas Bebber</a> <br />
<a href="http://dribbble.com/shots/1254439--GIF-Mobile-Form-Interaction">Based on a Dribbble by Matt D. Smith</a> -->