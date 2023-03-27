<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
</head>
<body>
	<h2>Login Form</h2>
	<form action="UsersLoginServlet" method="post">
		<label for="mail">Email:</label>
		<input type="email" id="mail" name="email" required><br>

		<label for="password">Password:</label>
		<input type="password" id="password" name="pw" required><br>

		<input type="submit" value="Login">
	</form>
</body>
</html>