<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
	<form class=f action="AdminLoginServlet" method="post">
		ログインＩＤ：<input type="text" name="mail" value="<%=request.getParameter("mail") %>">
		パスワード：<input class=p type="password" name="pw">
		<input class=b type="submit" value="Sign in">
	</form>
	<a href="./">戻る</a>
	<%
		} else {
	%>
	<p>IDとPWを入力してください。</p>
	<form class=f action="AdminLoginServlet" method="post">
		ログインＩＤ：<input type="text" name="mail">
		パスワード：<input class=p type="password" name="pw">
	<input class=b type="submit" value="Sign in">
	</form>
	<a href="./">戻る</a>
	<%
		}
	%>
</body>
</html>