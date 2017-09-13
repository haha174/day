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
		<title>网上书城 - 购书新主张 </title>
		<link rel="stylesheet" type="text/css" href="/scripts/common/common.css"/>
		<link rel="stylesheet" href="/scripts/css/index.css" />
		<link rel="stylesheet" type="text/css" href="/scripts/icon/iconfont.css" />
	</head>
	<body>
		<div class="top">
			<div class="layout">
				<p>网上书城，欢迎您的光临 ！</p>
					<c:if test="${user==null}">
				<ul>
					<li>
						<a href="/page/login.do">你好，请登录</a>
					</li>
					<li>
						<a href="/page/register.do">免费注册</a>
					</li>
				</ul>
		     </c:if> 
		     		<c:if test="${user!=null}">
				<ul>
					<li>
						<span id="wenhou"></span>
					</li>
					<li>
						<span>${user.loginName}   ${user.sex}</span>
						
					</li>
					<li style="padding-left:3px;">
						<input type="button" value="注销" onclick="zhuxiao()">
						
					</li>
				</ul>
		     </c:if> 
			</div>
		</div>
		<!--=======================================================================================================-->
		<div class="header layout">
			<a href="/page/index.do"><img src="/scripts/img/logo.jpg" alt="" /></a>
			<form >
				
			</form>
			<input type="text" placeholder="请输入您要查找的书籍" id="name"/>
				<input type="submit" id="searchBtn" value="搜索" onclick="byName()"/>
			<div id="cartBtn"><i class="iconfont"> &#xe61b; </i>我的购物车 <span>0</span> ></div>
		</div>
		<!--=======================================================================================================-->
		<!--=======================================================================================================-->
		<!--======================================================================-->
		<h2 class="title layout">图书推荐</h2>
		<div class="main layout">
			<div class="listNav" style="padding-top:50px;">
				<div class="listNavMiddle" >
					<ul id="liquanbu">
						<li  name="-1" id="quanbu">
						<a href="javascript:void(0)">全部分类</a>
				  <c:forEach items="${item}" var="item">
				  		<li  name="${item.id}">
							<a href="javascript:void(0)">${item.name}</a>
						</li>
                    </c:forEach>
					</ul>
				</div>
			</div>
			<div class="list" >
					<div class="show" id="booklistbyType" >
						  <c:forEach items="${list}" var="item">
				  		<ul data-good-id="${item.id}" style="float:left;height:auto">
							<li>
								<a href="/page/bookdental.do?id=${item.id}"><img style='width:100;height:100px;' src="${item.image}" /></a>
							</li>
							<li>
								<a href="/page/bookdental.do?id=${item.id}">${item.name}</a>
							</li>
							<li><span>￥${item.price}/月</span></li>
						</ul>
                    </c:forEach>
			</div></div>
			</div>
			<div class="footer" style="margin-top:50px;">
					<div class="layout"><img src="/scripts/img/footer.png"/></div>
					<p>Copyright©2013-2017  AUST 版权所有</p>
			</div>	
			
			<script src="/scripts/common/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
			<script src="/scripts/common/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
			<script src="/scripts/js/index.js" type="text/javascript" charset="utf-8"></script>
	
	</body>
</html>