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
    <h1>登録に成功しました。</h1>
 <% 
     request.setCharacterEncoding("UTF-8");
     String id = request.getParameter("id");
	 String title =  request.getParameter("title");
	 String author =  request.getParameter("author");
	 String publisher = request.getParameter("publisher");
	 String isbn = request.getParameter("isbn");
	 String category = request.getParameter("category");
	 String rent = request.getParameter("rent");
	
	 int ID = Integer.parseInt(id);
	 int ISBN = Integer.parseInt(isbn);
	 int RENT = Integer.parseInt(rent);
     %>
     <p>ID:<%=ID %></p>
     <p>図書名:<%=title %></p>
     <p>著者:<%=author %></p>
     <p>出版社:<%=publisher %></p>
     <p>ISBN:<%=ISBN %></p>
     <p>ジャンル:<%=category %></p>
     <p>貸出期限:<%=RENT %></p>
     
     <a href="Tosyohomeservlet">戻る</a>
</body>
</html>