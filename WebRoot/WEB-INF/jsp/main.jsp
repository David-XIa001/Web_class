<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 这个命令可以使jsp输出的html时去除多余的空行（jsp上使用EL和tag会产生大量的空格和空行）。 -->
<%@ page trimDirectiveWhitespaces="true"%>
<!-- 引入标准标签库 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="simple" uri="http://simple.com/common/"%>
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
	<link href="<%=basePath%>css/main.css" rel="stylesheet" />
	<style>
		table>tbody>tr:hover{
   background-color:palevioletred;
}
	</style>
</head>
<body>
		 	<!-- 导航部分 -->
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"style="font-size:24px; padding-top:20px;color:#F08080">长琴的信息管理系统</a>
			</div>
			<div>
				<ul class="nav navbar-nav" style="font-size:16px; padding-top: 5px;">
					<li ><a href="#">班级成员</a></li>
					<li><a href="#">我的文章</a></li>
					<li><a href="#">我的相册</a></li>
					<li><a href="#">留言</a></li>
				</ul>
			</div>
			<!-- 搜索框 -->
			<form class="navbar-form navbar-left" role="search" style="font-size:16px; padding-top: 5px;">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search" style="width:300px;">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			</form>
			

			<!-- 搜索框结束 -->
			<!-- 用户信息 -->
			<div class="navbar-form navbar-right dropdown" style="margin-right:30px;">
				<!-- <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">主题 -->
				<!-- <span class="caret"></span> -->
				<a href="" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
					<img src="<%=basePath%>images/me.jpg" style="height:30px" class="img-circle">
				</a>

				<!-- </button> -->
				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					<li role="presentation">
						<a role="menuitem" tabindex="-1" href="#">我的消息</a>
					</li>
					<li role="presentation" class="divider"></li>
					<li role="presentation">
						<a role="menuitem" tabindex="-1" href="#">我的设置</a>
					</li>
					<li role="presentation" class="divider"></li>
					<li role="presentation">
						<a role="menuitem" tabindex="-1" href="#">退出登入</a>
					</li>
					<li role="presentation" class="divider"></li>
				</ul>
			</div>
			<!-- 用户信息结束 -->
		</div>
		<!-- 导航容器结束 -->
	</nav>
	<!-- 导航栏结束 -->
	<!-- 表格部分 -->
		 <div class="panel panel-default">
					<div class="panel-heading">学生信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered" >
						<thead>
							<tr>
								<th><input type="checkbox" name="allChoice" id="allChoice">全选</th>
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
									<td><input type="checkbox" name="choice" id="choice"></td>
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
						<simple:page url="${pageContext.request.contextPath }/student/list.action" />
					</div>
		<!-- /.panel-body -->
	</div>
	<!-- panel panel-default -->
<!-- script -->
		<script src="<%=basePath%>/js/jquery-2.1.0.min.js"></script>
		<script src="<%=basePath%>/lib/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/js/main.js"></script>
		<script src="<%=basePath%>js/main.js"></script>
</body>
</html>