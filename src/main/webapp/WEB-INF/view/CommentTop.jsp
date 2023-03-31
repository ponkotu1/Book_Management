<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="CommentTopServlet" method="post">
        <div>
            <label for="comment">コメント</label>
            <textarea id="comment" name="comment"></textarea>
        </div>
        <div>
            <label for="GeneralId">ユーザーID</label>
            <textarea id="GeneralId" name="GeneralId"></textarea>
        </div>
        <div>
            <input type="submit" value="追加">
        </div>
    </form>
</body>
</html>