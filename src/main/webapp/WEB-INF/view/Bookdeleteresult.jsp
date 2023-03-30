<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>図書管理システム</title>
<style>
</style>
</head>
<body>
   <h1>削除しました。</h1>
   <%
   String id = request.getParameter("id");
   %>
   <p>ID:<%=id %></p>
   <a href="Tosyohomeservlet">戻る</a>
</body>
</html>