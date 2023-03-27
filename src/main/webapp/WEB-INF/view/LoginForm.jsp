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
		<input type="email" id="mail" name="mail" required><br>

		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br>

		<input type="submit" value="Login">
		<a href="UeersExcecutServlet">新規登録はこちら</a>
		
	</form>
</body>
</html>