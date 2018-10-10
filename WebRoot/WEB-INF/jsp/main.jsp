<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 这个命令可以使jsp输出的html时去除多余的空行（jsp上使用EL和tag会产生大量的空格和空行）。 -->
<%@ page trimDirectiveWhitespaces="true"%>
<!-- 引入标准标签库 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	/* request.getContextPath()拿到的是你的web项目的根路径，就是webContent(MyEclipse中是webRoot)。 */
	String path = request.getContextPath();
	/* request.getScheme() 返回当前链接使用的协议；一般应用返回http;SSL返回https; */
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>主界面</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
		 <p> this main</p>
		 <div class="panel panel-default">
					<div class="panel-heading">学生信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>学号</th>
								<th>姓名</th>
								<th>学校</th>
								<th>专业</th>
								<th>联系人</th>
								<th>手机号</th>
								<th>座机</th>
								<th>地址</th>
								<th>创建时间</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.stu_id}</td>
									<td>${row.stu_name}</td>
									<td>${row.stut_school}</td>
									<td>${row.stu_marjor}</td>
									<td>${row.stu_linkman}</td>
									<td>${row.stu_phone}</td>
								    <td>${row.stu_mobile}</td>
								    <td>${row.stu_address}</td>
								    <td>${row.stu_createtime}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#StudentEditDialog" onclick= "editStudent(${row.stu_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteStudent(${row.stu_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/student/list.action" />
					</div>
		<!-- /.panel-body -->

<script src="<%=basePath%>js/mian.js"></script>
</body>
</html>