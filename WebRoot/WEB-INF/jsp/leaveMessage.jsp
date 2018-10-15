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
    <title>留言界面</title>


    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="./lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/liuyan.css" rel="stylesheet" />
    <style>
    
            *{
                margin: 0px;
                padding: 0px;
            }
    </style>
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
                    <li><a href="#">班级成员</a></li>
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
            <!-- 留言1 -->
            <h2>留言标题</h2>
            <h5>描述标签</h5>
            <div class="fakeimg" style="float:right">
                <img src="./images/3.jpg" alt="" style="height:30px;">
            </div>
            <p>菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！菜鸟教程，学的不仅是技术，更是梦想！！！</p>
             <!-- 分割线 -->
             <h5 class="page-header"></h5>
             <!-- 留言二 -->
            <h2>小姐姐来此</h2>
            <h5>浪漫</h5>
            <div class="fakeimg" style="float:right">
                <img src="./images/3.jpg" alt="" style="height:30px;">
            </div>
            <p>很喜欢你这个博客,作者可以共享</p>
            <br>
          </div>
        </div>
      </div>
       
      <div class="jumbotron text-center" style="margin-bottom:0">
        <p>底部内容</p>
      </div>
      
    <script src="./js/jquery-2.1.0.js"></script>
    <script src="./lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>

</html>