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

<script type="text/javascript">
	$(function() {

		$("#myStartTime").datetimepicker({
			format : 'YYYY-MM-DD',//日期格式化，只显示日期
			locale : 'zh-CN' //中文化
		//maxDate: '2017-10-01', //最大日期
		//minDate: '2010-01-01',//最小日期
		//autoclose : true,
		//todayBtn : true,
		//todayHighlight : true,
		//todayBtn : "linked"

		});

	});
</script>
</head>
<body>
	<div class="main-wrap">
		<div class="crumb-wrap">
			<div class="crumb-list">
				<i class="icon-font"></i><a href="index.html">首页</a><span
					class="crumb-step">&gt;</span><span class="crumb-name">作品管理</span>
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-title">
				<div class="result-list">
					<a href="AddUser.html"><i class="icon-font"></i>新增类型</a> <a
						id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
				</div>
			</div>
			<table class="table table-bordered">
				<tr>
					<th><input type="checkbox" name="typeId" id="all" /> 全选</th>
					<th>编号</th>
					<th>类型</th>
				</tr>
				<tr>
					<td><input type="checkbox" name="typeId" id="typeId" /></td>
					<td>1</td>
					<td>猫</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="typeId" id="typeId" /></td>
					<td>2</td>
					<td>狗</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="typeId" id="typeId" /></td>
					<td>3</td>
					<td>老鼠</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="typeId" id="typeId" /></td>
					<td>4</td>
					<td>猪</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="typeId" id="typeId" /></td>
					<td>5</td>
					<td>老虎</td>
				</tr>
			</table>
		</div>

	</div>
</body>
</html>