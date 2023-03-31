<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Admin" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者新規登録</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			Admin admin = (Admin)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h2>Registration Form</h2>
		<form action="AdminRegisterConfirmServlet" method="post">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required><br>

		<label for="mail">Email:</label>
		<input type="email" id="email" name="email" required><br>

		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br>

		<input type="submit" value="Register">
		</form>
	<%
		} else {
	%>
	<h2>Registration Form</h2>
	<form action="AdminRegisterConfirmServlet" method="post">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required><br>

		<label for="mail">Email:</label>
		<input type="email" id="email" name="email" required><br>

		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br>

		<input type="submit" value="Register">
	</form>
	<%
		}
	%>
</body>
</html>