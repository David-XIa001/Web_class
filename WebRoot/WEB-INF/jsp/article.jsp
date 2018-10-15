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
    <title>文章界面</title>


    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath %>css/bootstrap.min.css" rel="stylesheet" />
	

</head>

<body>
    <!-- 导航部分 -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#" style="font-size:24px; padding-top:20px;color:#F08080">长琴的信息管理系统</a>
            </div>
            <div>
                <ul class="nav navbar-nav" style="font-size:16px; padding-top: 5px;">
                  <li ><a href="${pageContext.request.contextPath}/list.action ">班级成员</a></li>
					<li><a href="${pageContext.request.contextPath}/article.action">我的文章</a></li>
					<li><a href="${pageContext.request.contextPath}/photoAlbum.action">我的相册</a></li>
					<li><a href="${pageContext.request.contextPath}/leaveMessage.action">留言</a></li>
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
                    <img src="./images/my.jpg" style="height:30px" class="img-circle">
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
    <!-- 留言主页面部分 -->
    <div class="container">
            <div class="row">
            <!-- 侧边栏 -->
              <div class="col-sm-4">
                <h2>关于我</h2>
                
                <div class="fakeimg ">
                    <img src="./images/me.jpg" alt="" height="30px ">
                </div>
                <p>武汉纺织大学学生</p>
                <!-- 分割线 -->
                <h5 class="page-header"></h5>
               
                <!-- 链接块 -->
                <h3>友情链接</h3>
                
                <ul class="nav nav-pills nav-stacked">
                  <li ><a href="#">我的github</a></li>
                  <li><a href="#">我的简书</a></li>
                  <li><a href="#">中国大学</a></li>
                </ul>
                <hr class="hidden-sm hidden-md hidden-lg">
              </div>
              <!-- 侧边栏结束 -->
              <!-- 主界面 -->
              <div class="col-sm-8">
                    <div class="panel panel-danger">
                            <div class="panel-heading">画梅</div>
                            <div class="panel-body">微雪初消月半池，篱边遥见两三枝。
                                清香传得天心在，未话寻常草木知。</div>
                            <div class="panel-footer">作者： 方孝孺</div>
                        </div>
                        <div class="panel panel-warning">
                            <div class="panel-heading">菊花</div>
                            <div class="panel-body">秋丛绕舍似陶家，遍绕篱边日渐斜。
                                不是花中偏爱菊，此花开尽更无花。</div>
                            <div class="panel-footer">作者： 元稹</div>
                        </div>
                 <h5 class="page-header"></h5>
                 <!-- 留言二 -->
                 <div class="panel panel-success">
                        <div class="panel-heading">青玉案·元夕</div>
                        <div class="panel-body">东风夜放花千树，更吹落，星如雨。宝马雕车香满路。凤箫声动，玉壶光转，一夜鱼龙舞。
                            　　蛾儿雪柳黄金缕，笑语盈盈暗香去。众里寻他千百度，蓦然回首，那人却在，灯火阑珊处。</div>
                        <div class="panel-footer">作者： 辛弃疾</div>
                    </div>
                    <div class="panel panel-info">
                        <div class="panel-heading">离思</div>
                        <div class="panel-body">曾经沧海难为水，除却巫山不是云。
                            取次花丛懒回顾，半缘修道半缘君。</div>
                        <div class="panel-footer">作者： 元稹</div>
                    </div>
              </div>
            </div>
          </div>
           
    
    <script src="<%=basePath %>/js/jquery-2.1.0.js"></script>
    <script src="<%=basePath %>js/bootstrap.min.js"></script>
</body>

</html>