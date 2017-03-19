<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.ouc.domains.Info"%>
<%@ page import="com.ouc.dao.InfoDAO"%>
<%@ page import="com.ouc.dao.impl.InfoDAOImpl"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../../js/date/WdatePicker.js"></script>
<link type="text/css" rel="stylesheet"
	href="../../css/bootstrap.min.css">
<title>信息展示</title>
</head>
<body>
	<div class="header" align="center">
		<h1>信息展示</h1>
	</div><br><br>
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<table class="table table-hover">
			<tr>
				<th>姓名</th>
				<th>性别</th>
				<th>年级</th>
				<th>专业</th>
				<th>目的地</th>
				<th>日期</th>
				<th>操作</th>
				<th></th>
			</tr>
			<%
				InfoDAO idao = new InfoDAOImpl();
				List<Info> list = idao.getInfos();
				if (list.size() > 0) {
					for (Info info : list) {
			%>
			<tr>
				<form action="info_update.action" method="post">
					<td><input name="info.name" value="<%=info.getName()%>"
						style="width: 80px"></td>
					<td><input name="info.gender" value="<%=info.getGender()%>"
						style="width: 30px"></td>
					<td><input name="info.grade" value="<%=info.getGrade()%>"
						style="width: 50px"></td>
					<td><input name="info.major" value="<%=info.getMajor()%>"
						style="width: 150px"></td>
					<td><input name="info.destination"
						value="<%=info.getDestination()%>" style="width: 100px"></td>
					<td><input name="info.date" value="<%=info.getDate()%>"
						style="width: 100px" class="Wdate"
						onFocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm:ss'})"></td>
					<td><input type="hidden" name="updateId"
						value="<%=info.getId()%>" /> <input class="btn btn-primary"
						type="submit" value="修改" onclick="updcfm();" /></td>
				</form>
				<td>
					<form action="info_delete.action" method="post">
						<input type="hidden" name="delId" value="<%=info.getId()%>" /> <input
							class="btn btn-primary" type="submit" value="删除"
							onclick="delcfm();" />
					</form>
				</td>
			</tr>
			<%
				}
				}
			%>
		</table>
		<div align="center">
			<input class="btn btn-success"
				onclick="window.location.href='../info/enroll.jsp'" value="发布信息" />
			<input class="btn btn-primary" 
				onclick="window.location.href='../../index.jsp'" value="首页" />
		</div>
	</div>
	<br>

</body>
</html>