<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Admin" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
	Admin ad = (Admin)session.getAttribute("user");
	%>
	<h2>ようこそ<%=ad.getName() %>さん</h2>
	<a href="#">TOPページ</a>
	<a href="#">管理者新規登録</a>
	<a href="AdminLogoutServlet">ログアウト</a>
	<a href="#">本の登録</a>
	<a href="#">本の削除</a>
	<a href="#">本の検索</a>
	<a href="#">ユーザー管理</a>
	<a href="#">お知らせ管理</a>
</body>
</html>