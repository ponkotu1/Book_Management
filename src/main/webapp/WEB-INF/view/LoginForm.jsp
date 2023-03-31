<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
<link rel="stylesheet" href="css/Login.css">
</head>
<body>
	
	<hgroup>
  	<h1>ログイン</h1>
  	<h3>book managemaent app</h3>
	</hgroup>
	
	<form action="UsersLoginServlet" method="post">
  	<div class="group">
    	<input type="email" id="mail" name="email" required><span class="highlight"></span><span class="bar"></span>
    	<label>Email</label>
  	</div>
  	<div class="group">
    	<input type="password" id="psssword" name="pw" required><span class="highlight"></span><span class="bar"></span>
    	<label>Password</label>
  	</div>
  	<a href="UsersFormServlet">新規登録はこちらから</a>
  	
  	<button type="submit" class="button buttonBlue">ログイン 
    	<div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
  	</button>
	</form>
</body>
</html>