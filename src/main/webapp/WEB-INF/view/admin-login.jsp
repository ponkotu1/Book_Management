<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/admin-login.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous ">
<meta charset="UTF-8">
<title>管理者ログイン画面</title>
</head>
<body>
	<h2>管理者ログイン画面</h2>
	<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
	<h4 style="color:red">ログイン失敗</h4><br>
	<p>IDとPWを入力してください。</p>
	<form class=f action="LoginServlet" method="post">
		ログインＩＤ：</td><td><input type="text" name="mail" value="<%=request.getParameter("mail") %>">
		パスワード：</td><td><input class=p type="password" name="pw">
		<input class=b type="submit" value="Sign in">
	</form>
	<a class=bu href="AdminRegisterServlet">新規登録はこちら</a>
	<%
		} else {
	%>
	<p>IDとPWを入力してください。</p>
	<form class=f action="LoginServlet" method="post">
		ログインＩＤ：</td><td><input type="text" name="mail">
		パスワード：</td><td><input class=p type="password" name="pw">
	<input class=b type="submit" value="Sign in">
	</form>
	<a class=bu href="AdminRegisterServlet">新規登録はこちら</a>
	<%
		}
	%>
</body>
</html>