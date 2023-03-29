<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"href="css/admin-login.css">
<title>Admin Login</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
	<h3>登録に失敗しました。</h3>
	<hgroup>
  <h1>Admin Login</h1>
  <h3>By Josh Adamous</h3>
</hgroup>
<form action="AdminLoginServlet" method="post">
  <div class="group">
    <input type="text" name="mail" value="<%=request.getParameter("mail") %>"><span class="highlight"></span><span class="bar"></span>
    <label>Email</label>
  </div>
  <div class="group">
    <input type="password" name="pw"><span class="highlight"></span><span class="bar"></span>
    <label>Password</label>
  </div>
  <button type="button" class="button buttonBlue">Subscribe
    <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
  </button>
</form>
<a href="./">戻る</a>
	<%
		} else {
	%>
	<hgroup>
  <h1>Admin Login</h1>
  <h3>By Josh Adamous</h3>
</hgroup>
<form action="AdminLoginServlet" method="post">
  <div class="group">
    <input type="text" name="mail"><span class="highlight"></span><span class="bar"></span>
    <label>Email</label>
  </div>
  <div class="group">
    <input class=p type="password" name="pw"><span class="highlight"></span><span class="bar"></span>
    <label>Password</label>
  </div>
  <button type="button" class="button buttonBlue">Sign in
    <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
  </button>
    <div class="back"><a href="./">戻る</a></div>
</form>
	<%
		}
	%>
</body>
</html>