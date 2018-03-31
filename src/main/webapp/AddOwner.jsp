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
				<div class="result-content">
					<form action="PetList.jsp" method="post" id="myform"
						name="myform" enctype="multipart/form-data">
						<table class="insert-tab" width="100%">
							<tbody>

								<tr>
									<th><i class="require-red">*</i>姓名：</th>
									<td><input class="common-text required" id="title"
										name="title" size="50" value="" type="text"></td>
								</tr>
								
								<tr>
									<th width="120"><i class="require-red">*</i>所在城市：</th>
									<td><select name="colId" id="catid" class="required">
											<option value="">深圳</option>
											<option value="19">广州</option>
											<option value="20">东莞</option>
									</select></td>
								</tr>
								<tr>
									<th width="120"><i class="require-red">*</i>详细地址：</th>
									<td><select name="colId" id="catid" class="required">
											<option value="">xxx街道办</option>
									</select></td>
								</tr>

								<tr>
									<th width="120"><i class="require-red">*</i>手机号码：</th>
									<td>
										<input class="common-text required" id="title"
										name="title" size="50" value="" type="text">
									</td>
								</tr>
								<tr>
									<th></th>
									<td><input class="btn btn-primary btn6 mr10"
										value="保存用户信息" type="submit"> <input class="btn btn6"
										onclick="history.go(-1)" value="返回" type="button"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>

		</div>

	</div>
</body>
</html>