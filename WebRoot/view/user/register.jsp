<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="../../css/login-style.css">
<title>register.jsp</title>
</head>
<body>
	<h1>注册页面</h1>
	<hr>
	<div style="text-align:center"><br>
	<form action="register" method="post">
		用户名：<input type="text" name="user.username"/><br><br>
		密码：   <input type="password" name="user.password"/><br><br>
		<input type="submit" value="注册"/>
		<input type=button onclick="window.location.href='login.jsp'" value="返回登陆页面"/> 
	</form>
	
	</div>
</body>
</html>