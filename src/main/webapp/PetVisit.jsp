<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
<!-- 引用bootstrap需要的文件 -->
<!-- css -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />

<!-- js之前必须先引用jquery.js文件 -->
<script src="js/libs/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>

<!--引入日期插件需要的文件-->
<link rel="stylesheet" href="datetime/css/bootstrap-datepicker.css" />
<script src="datetime/moment-with-locales.js"></script>
<script src="datetime/bootstrap-datetimepicker.js"></script>
<!-- <script type="text/javascript" -->
<!-- 	src="datetime/locales/bootstrap-datepicker.fr.min.js"></script> -->
</head>
<body>
	<div class="main-wrap">
		<div class="crumb-wrap">
			<div class="crumb-list">
				<i class="icon-font"></i><a href="index.html">首页</a><span
					class="crumb-step">&gt;</span><span class="crumb-name">作品管理</span>
			</div>
		</div>
		<div class="search-wrap">
			<div class="search-content">
				<form action="#" method="post">
					<table class="search-tab">
						<tr>
							<th width="120">宠物ID:</th>
							<td><select name="search-sort" id="">
									<option value="">全部</option>
									<option value="19">1</option>
									<option value="20">2</option>
							</select></td>
							<th width="90">宠物名称:</th>
							<td><select name="search-sort" id="">
									<option value="">全部</option>
									<option value="19">大黄</option>
									<option value="20">旺财</option>
							</select></td>
							<th width="90">诊断关键字:</th>
							<td><input class="common-text" placeholder="关键字"
								name="keywords" value="" id="" type="text"></td>
							<td><input class="btn btn-primary btn2" name="sub"
								value="查询" type="submit"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="result-wrap">
			<form name="myform" id="myform" method="post">
				<div class="result-title">
					<div class="result-list">
						<a href="AddPetVisit.jsp"><i class="icon-font"></i>新增病例</a> <a
							id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
					</div>
				</div>
				<div class="result-content">
					<table class="result-tab table table-striped" width="100%">
						<tr>
							<th>序号</th>
							<th>宠物编号</th>
							<th>宠物名称</th>
							<th>病例信息</th>
							<th>就诊时间</th>
						</tr>

						<tr>
							<td class="tc">1</td>
							<td><a href="PetVisitInfo.jsp">9527</a></td>
							<td><a href="PetVisitInfo.jsp">旺财</a></td>
							<td>今天好的吃多了，拉肚子</td>
							<td>2017-7-12</td>

						</tr>
						<tr>
							<td class="tc">2</td>
							<td><a href="PetVisitInfo.jsp">9528</a></td>
							<td><a href="PetVisitInfo.jsp">大黄</a></td>
							<td>今天好的吃多了，拉肚子</td>
							<td>2017-7-12</td>
						</tr>
					</table>
					<div class="list-page">2 条 1/1 页</div>
				</div>
			</form>
		</div>
	</div>
	<!--/main-->
	</div>
</body>
</html>