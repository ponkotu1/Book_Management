<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"href="css/users-list.css">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
			String errorCode = request.getParameter("error");
			if(errorCode != null && errorCode.equals("1")){
		Users us = (Users)session.getAttribute("input_data");
	%>
		<p style="color:red">検索に失敗しました。</p>
		<h3>ユーザー検索</h3>
	<form action="#" method="post">
		名前：<input type="text" name="name"><br>
		<input type="submit" value="検索">
	</form><br>
	<%
		} else {
	%>
	<h3>ユーザー検索</h3>
	<form action="#" method="post">
		名前：<input type="text" name="name"><br>
		<input type="submit" value="検索">
	</form><br>
	<%
		}
	%>
	<br>
	<h3>アカウント一覧</h3>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>名前</th>
			<th>メールアドレス</th>
			<th>状況</th>
		</tr>
		
	<%
		List<Users> list = (List<Users>)request.getAttribute("list");
		for(Users us : list){
	%>
		<tr>
			<td><%=us.getId() %></td>
			<td><%=us.getName() %></td>
			<td><%=us.getEmail() %></td>
			<td><button><label class="open" for="pop-up">削除</label></button>
			<input type="checkbox" id="pop-up">
			<div class="overlay">
			<div class="window">
			<label class="close" for="pop-up">閉じる</label>
			<h4>ポップアップウィンドウ</h4>
			<p>この窓が表示されている間は窓の外の操作はできません。ウィンドウを閉じて操作して下さい。</p>
			</div>
			</div></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>