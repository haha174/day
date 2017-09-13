<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="/scripts/common/common.css"/>
		<link rel="stylesheet" type="text/css" href="/scripts/login/css/login.css"/>
	</head>
	<body>
		<header class="layout">
			<a href="/page/index.do"><img src="/scripts/img/logo.jpg"/></a>
			<h1>欢迎登录</h1>
		</header>
		<div class="main">
			<div class="layout">
				<form method="post">
					<h2>账号登录</h2>
					<p>
						<img src="/scripts/login/imgs/usn.png"/><input type="text" name="username" id="username"  placeholder="请输入用户名"/>
					</p><br /><br /><br />
					<p>
						<img src="/scripts/login/imgs/pwd.png"/><input type="password" name="password" id="password"  placeholder="请输入密码"/>
					</p>
						<p>
						<img src="/scripts/login/imgs/pwd.png"/><input type="text" name="sms" id="sms"  placeholder="请输入验证码" style="width: 160px;"/><div  style="float:left;width:80px; height:25px; "><img title = "点我换一张" src='/page/captcha-image.do' id="kaptchaImage" /></div>
					</p>
					<input type="button" value="登录" onclick="login()"/>
					<p><a href="/page/register.do">没有账号，立即注册</a></p>
				</form>
			</div>
		</div>
		<div class="bottom layout">
			<ul>
				<li><a href="#">关于我们</a>|</li>
				<li><a href="#">联系我们</a>|</li>
				<li><a href="#">人才招聘</a>|</li>
				<li><a href="#">商家入驻</a>|</li>
				<li><a href="#">广告服务</a>|</li>
				<li><a href="#">友情链接</a>|</li>
				<li><a href="#">销售联盟</a></li>
			</ul><br /><br /><br />
			<p>Copyright©2013-2017  AUST 版权所有</p>
		</div>
		
	</body>
	<script src="/scripts/common/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="/scripts/login/js/login.js" type="text/javascript" charset="utf-8"></script>
</html>
