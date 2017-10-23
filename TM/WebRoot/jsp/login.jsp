<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <title>用户登录</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <style>
    	#forgetpassword{
		    display: block;
		    text-align: right;
		    float: right;
		}
		#register{
		    display: block;
		    text-align: right;
		    float: right;
		    margin-right: 50px;
		}
    </style>
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="header">
        <span>真实问题</span>
    </div>
    <div class="content">
        <div class="content_left">
            <div class="content_pic">
                <img src="images/u296.png" class="img-responsive center-block">
                <span>沟通让生活更美好</span>
            </div>
        </div>
        <div class="content_right">
            <span>登&nbsp;&nbsp;&nbsp;&nbsp;录</span>
            <form class="form-horizontal" id="myform">
                <div class="form-group">
                        <input type="text" class="form-control content_form" id="username" name="username" placeholder="用户名"/>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control content_form" id="password" name="password" placeholder="密码">
                </div>
                <div class="form-group" id="userType">
                    <input type="radio" name="radio" value="user" checked>用户登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="radio" value="expert">专家登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="form-group">
                    <button class="btn btn-default content_form" type="submit" id="landing">登录</button>
                </div>
                <!-- <a href="jsp/unabletologin.jsp" id="forgetpassword">忘记密码</a> -->
                <a href="jsp/register.jsp" id="register">立即注册</a>
            </form>
        </div>
    </div>
    <div class="footer">
        <span>© 2016 · 发现 · 移动应用 · 使用机构帐号登录 · 工作 · 京 ICP 备 13052560 号 · 京公网安备 11010802010035 号</span>
    </div>
</div>
</body>
</html>