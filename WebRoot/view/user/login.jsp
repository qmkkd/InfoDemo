<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="../../css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="../../css/login-style.css">

<title>登陆页面</title>
</head>
<body>
	<div class="mainbox">
		<h1>用户登陆</h1>
		<br><br>
		<hr>
		<div class="login">
			<form action="user_login.action" method="post">
				用户名：<input type="text" name="user.username" />
				密码：<input type="password" name="user.password" />
				<input type=button class="btn btn-primary" onclick="window.location.href='#'" value="忘记密码" />
				<br><br> 
				<input type="submit" class="btn btn-primary" value="登陆" /> 
				<input type=button class="btn btn-primary" onclick="window.location.href='register.jsp'" value="注册" />
				<span><!-- tips --></span>
			</form>
		</div>
	</div>
</body>
</html>