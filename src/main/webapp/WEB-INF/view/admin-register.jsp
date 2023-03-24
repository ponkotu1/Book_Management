<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Admin" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/admin-register.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous ">
<title>管理者新規登録</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
			String errorCode = request.getParameter("error");
			if(errorCode != null && errorCode.equals("1")){
		Admin ad = (Admin)session.getAttribute("input_data");
	%>
		<h4 style="color:red">登録に失敗しました。</h4>
		<form action="AdminRegisterConfirmServlet" method="post">
			メール：<input type="email" name="email" value="<%=ad.getMail()%>">
		<div><input class=b type="submit" value="送信"></div>
		</form>
		<div id=button>
		<a class=bu href="./">ログイン画面へ戻る</a>
		</div>		
	<%
		} else {
	%>
	<form action="AdminRegisterConfirmServlet" method="post">
		メール：<input class=p type="email" name="email">
		<div><input type="submit" value="送信"></div>
	</form>
		<br>
		<div id=button>
		<a class=bu href="./">ログイン画面へ戻る</a>
		</div>
	<%
		}
	%>
</body>
</html>