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
     <h1>登録する図書を入力してください。</h1>
     <form action="Tosyoregisterservlet" method="post">
         ID:<input type="text"name="id"><br>
         図書名:<input type="text"name="title"><br>
         著者:<input type="text"name="author"><br>
         貯蔵冊数:<input type="text"name="publisher"><br>
         ISBN:<input type="text"name="isbn"><br>
         ジャンル:<input type="text"name="category"><br>
         貸出期限:<input type="text"name="rent"><br>
         <input type="submit"value="登録">
     </form>
</body>
</html>