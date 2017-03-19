<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../../js/date/WdatePicker.js"></script>
<link type="text/css" rel="stylesheet" href="../../css/bootstrap.min.css">
<scripe src=""></scripe>
<title>发布信息页面</title>
</head>
<body>
	<!-- 发布信息表单 -->
	
	<h1 align="center">发布信息</h1><br>
	<hr align="center" width="50%"><br>
	
	<div align="center">
	<form action="info_enroll.action" method="post">
		<p>姓名：<input type="text" name="info.name" /></p>
		<p>性别：
		<input type="radio" name="info.gender" value="男" checked/>男
		<input type="radio" name="info.gender" value="女" />女
		</p>
		<p>年级：<input type="text" name="info.grade"/></p>
		<p>专业：<input type="text" name="info.major"/></p>
		<p>目的地：<input type="text" name="info.destination" /></p>

<!--  	
		可传值
		<span>日期：</span><input type="date" name="date"><br>
		不能传值
		<span>时间：</span><input type="time" name="time"/><br><br>
-->

		<p>日期：</span><input class="Wdate" onFocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:new Date()})"
			name="info.date"/>
		</p>
		<input class="btn btn-primary" type="submit" value="发布" >
		<input class="btn btn-primary" type=button onclick="window.location.href='showInfo.jsp'" value="取消"/> 
	</form>
	<br>
	
	</div>
	
</body>
</html>