<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>下記の内容で登録します。よろしいですか？</p>
	<%
	Users user = (Users)session.getAttribute("input_data");
	%>
	名前：<%=user.getName() %><br>
	メール：<%=user.getEmail() %><br>
	パスワード：********<br>
	<a href="UsersExecuteServlet">OK</a><br>
	<a href="UsersRegisterFormServlet">戻る</a>
</body>
</html>