<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv=refresh content="3,url=../info/showInfo.jsp">
<title>登陆成功</title>
</head>
<body>
	<p>登陆成功</p>
	<b style="color: blue"><span id=jump>3</span> 秒钟后页面将进入信息页面...</b>
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