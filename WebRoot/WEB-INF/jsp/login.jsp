<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>login</title>
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<%-- ${pageContext.request.contextPath}/js/jquery-1.11.3.min.js --%>
</head>
<body>
	<div id="particles-js">
		<div class="container">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
					<h1 class="login-title" style="font-size:30px">Manager</h1>
					<!-- onsubmit="return check()"  验证表单之后再提交 -->
					<form action="${pageContext.request.contextPath }/login.action" method="post" onsubmit="return check()">
						<div class="form-group has-feedback">
							<input type="text" id="usercode" name="usercode" class="form-control" placeholder="请输入用户名">
							<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
						</div>
						<!-- form-group has-feedback end -->
						<div class="form-group has-feedback">
							<input type="password" id="password" name="password" class="form-control" placeholder="请输入密 码">
							<span class="glyphicon glyphicon-lock form-control-feedback"></span>
						</div>
						<!-- form-group has-feedback end -->
						<div class="row">
							<div class="col-xs-12">
								<button type="submit" class="btn btn-danger btn-block btn-flat">登
									录</button>
							</div>
						</div>
						<!-- row end -->
					</form>
					<br>
					<p class="text-right">
						<a href="#">忘记密码?</a><a href="#" class="text-center">注册账号</a>
					</p>
				</div>
			</div>
		</div>
		<!-- container end -->
	</div>
	<!-- scripts -->
	<script src="${pageContext.request.contextPath}/js/particles.js"></script>
	<script src="${pageContext.request.contextPath}/js/app.js"></script>
	<script>
// 判断是登录账号和密码是否为空
function check(){
    var usercode = $("#usercode").val();
    var password = $("#password").val();
    if(usercode=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
</body>
</html>
