<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../../js/date/WdatePicker.js"></script>
<title>发布信息页面</title>
</head>
<body>
	<!-- 发布信息表单 -->
	
	<h1 align="center">发布信息</h1><br>
	<hr align="center" width="50%"><br>
	
	<div align="center">
	<form action="enroll.action" method="post">
		<span>姓名：</span><input type="text" name="info.name" /><br><br>
		<span>性别：</span>
		<input type="radio" name="info.gender" value="男" checked/>男
		<input type="radio" name="info.gender" value="女" />女
		<br><br>
		<span>年级：</span><input type="text" name="info.grade"/><br><br>
		<span>专业：</span><input type="text" name="info.major"/><br><br>
		<span>目的地：</span><input type="text" name="info.destination" /><br><br>

<!--  	
		可传值
		<span>日期：</span><input type="date" name="date"><br>
		不能传值
		<span>时间：</span><input type="time" name="time"/><br><br>
-->

		<span>日期：</span><input class="Wdate" onFocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',minDate:new Date()})"
			name="info.date"/>
			<br><br>
		<span>时间：</span><input class="Wdate" onFocus="WdatePicker({lang:'zh-cn',dateFmt:'HH:mm:ss'})" 
			name="info.time"/><br><br>
		<input type="submit" value="发布" >
		<input type=button onclick="window.location.href='showInfo.jsp'" value="取消发布"/> 
	</form>
	<br>
	
	</div>
	
</body>
</html>