<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>宠物医院</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
<script type="text/javascript" src="js/libs/jquery.min.js"></script>
<style>
.sub-menu {
	display: none;
}
</style>
</head>
<body>

<!-- 	<img src="images/banner1.jpg" width="1349" height="100"> -->
	<div class="topbar-wrap white">
		<div class="topbar-inner clearfix">

			<div class="topbar-logo-wrap clearfix">
				<h1 class="topbar-logo none">
					<a href="index.html" class="navbar-brand">后台管理</a>
				</h1>
				<ul class="navbar-list clearfix">
					<li><a class="on" href="index.html">首页</a></li>
					<li><a href="#" target="_blank">网站首页</a></li>
				</ul>
			</div>
			<div class="top-info-wrap">
				<ul class="top-info-list clearfix">
					<li><a href="#">${empInfo.empName}</a></li>
					<li><a href="#">修改密码</a></li>
					<li><a href="#">退出</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container clearfix">
		<div class="sidebar-wrap">
			<div class="sidebar-title">
				<h1>菜单</h1>
			</div>
			<div class="sidebar-content">
				<ul class="sidebar-list">
					<li><a class="parent"><i class="icon-font">&#xe003;</i>宠物管理</a>
						<ul class="sub-menu">
							<li><a href="AddPet.jsp" target="main"><i
									class="icon-font">&#xe008;</i>新增宠物</a></li>
							<li><a href="findPet" target="main"><i
									class="icon-font">&#xe005;</i>查看宠物</a></li>
									<li><a href="AddPetVisit.jsp" target="main"><i
									class="icon-font">&#xe005;</i>新增病例</a></li>
									<li><a href="PetVisit.jsp" target="main"><i
									class="icon-font">&#xe005;</i>查看病例</a></li>
						
						</ul></li>
					<li><a class="parent"><i class="icon-font">&#xe003;</i>会员管理</a>
						<ul class="sub-menu">
							<li><a href="AddOwner.jsp" target="main"><i
									class="icon-font">&#xe017;</i>新增会员</a></li>
							<li><a href="OwnerList.jsp" TARGET="main"><i
									class="icon-font">&#xe005;</i>查看会员</a></li>

						</ul></li>

					<li><a class="parent"><i class="icon-font">&#xe003;</i>医生管理</a>
						<ul class="sub-menu">
							<li><a href="AddVet.jsp" target="main"><i
									class="icon-font">&#xe017;</i>新增医生</a></li>
							<li><a href="findVet" target="main"><i
									class="icon-font">&#xe005;</i>查看医生</a></li>
							
						</ul></li>
					<li><a class="parent"><i class="icon-font">&#xe018;</i>基础数据</a>
						<ul class="sub-menu">
							<li><a href="TypeManage.jsp" target="main"><i
									class="icon-font">&#xe005;</i>宠物类型维护</a></li>
									
									<li><a href="SpecManage.jsp" target="main"><i
									class="icon-font">&#xe005;</i>医生特长维护</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div class="c">
			<iframe name="main" id="main" frameborder="0" scrolling="no"></iframe>
		</div>
		<!--/sidebar-->
		<script type="text/javascript">
			document.getElementById('main').width = (document.body.clientWidth - 195)
					+ "px";
			document.getElementById('main').height = 700;
			$(function() {
				$(".parent").click(function() {
					$(this).next().toggle();
				});
			});
		</script>
		<!--/main-->
	</div>
</body>
</html>