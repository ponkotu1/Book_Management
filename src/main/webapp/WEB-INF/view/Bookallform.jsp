<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>図書管理システム</title>
<style>
</style>
</head>
<body>
  <h1>一覧表示</h1>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>図書名</th>
			<th>著者</th>
			<th>貯蔵冊数</th>
			<th>ISBN</th>
			<th>ジャンル</th>
			<th>貸出期限</th>
		</tr>
	<%
	List<Book> list = (ArrayList<Book>)request.getAttribute("list");
	for(Book book : list) {
	%>
		<tr>
			<td><%=book.getId() %></td>
			<td><%=book.getTitle() %></td>
			<td><%=book.getAuthor() %></td>
			<td><%=book.getPublisher() %></td>
			<td><%=book.getIsbn() %></td>
			<td><%=book.getCategory() %></td>
			<td><%=book.getRent() %></td>
		</tr>
	<%} %>
	</table>
	
	<a href="Tosyohomeservlet">戻る</a>
</body>
</html>