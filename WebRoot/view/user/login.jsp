<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="../../css/login-style.css">
<title>登陆页面</title>
</head>
<body>
	<h1>登陆页面</h1>
	<hr><br>
	<div class="login">
	<form action="login" method="post">
		用户名：<input type="text" name="user.username"/><br><br>
		密码：   <input type="password" name="user.password"/><br><br>
		<input type="submit" value="登陆"/>&nbsp;&nbsp;
		<input type=button onclick="window.location.href='register.jsp'" value="注册"/> 
	</form>
	</div>
	
</body>
</html>