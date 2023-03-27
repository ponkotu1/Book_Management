<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Admin" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認画面</title>
</head>
<body>
	<h2>新規登録画面</h2>
	<p>下記の内容で登録します。よろしいですか？</p>
	<%
	Admin admin = (Admin)session.getAttribute("input_data");
	%>
	名前：<%=admin.getName() %>
	メール：<%=admin.getMail() %>パスワード：********
	<a class=bu href="AdminRegisterExecuteServlet">登録する</a><br>
	<a class=bu href="AdminRegisterServlet">戻る</a>
</body>
</html>