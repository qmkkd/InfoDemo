<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv=refresh content="3,url=login.jsp">
<title>注册成功</title>
</head>
<body>
	
	
	<p>注册成功</p><br>
	<p style="color: blue"><span id=jump>3</span> 秒钟后页面将返回登陆页面...</p>
<script>
	function countDown(secs) {
		jump.innerText = secs;
		if (--secs > 0)
			setTimeout("countDown(" + secs + " )", 1000);
	}
	countDown(3);
</script>

</body>
</html>