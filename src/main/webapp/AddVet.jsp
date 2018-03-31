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

		init();
		$("#myStartTime").datetimepicker({
			format : 'YYYY-MM-DD',//日期格式化，只显示日期
			locale : 'zh-CN' //中文化
		});

	});

	function init() {
		// 加载擅长的信息   多选框
		//	var path = 'requestContext.request.contextPath'
		$.getJSON("findSpec", function(data) {
			
			//获取特长td
			var $td = $("#specIdList");
			
			$.each(data,function(index,spec){
				//特长
				var $input = $("<input type='checkbox' name='specId' value='"+spec.specId+"' >"+spec.specName+" </input>");
				$td.append($input);
			})
			
		
			
			
		});

	}
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
				<form action="saveVet" method="post" id="myform" name="myform">
					<table class="insert-tab" width="100%">
						<tbody>

							<tr>
								<th><i class="require-red">*</i>姓名：</th>
								<td><input class="common-text required" id="vetName"
									name="vetName" size="50" value="" type="text"></td>
							</tr>

							<tr>
								<th><i class="require-red">*</i>电话号码：</th>
								<td><input class="common-text required" id="vetPhone"
									name="vetPhone" size="50" value="" type="text"></td>
							</tr>

							<tr>
								<th width="120"><i class="require-red">*</i>擅长领域：</th>
								<td id="specIdList">
<!-- 								<input class="common-text required" id="title" -->
<!-- 									name="title" size="50" value="" type="checkbox"> -->
<!-- 									内科&nbsp;&nbsp;<input class="common-text required" id="title" -->
<!-- 									name="title" size="50" value="" type="checkbox"> -->
<!-- 									外科&nbsp;&nbsp;<input class="common-text required" id="title" -->
<!-- 									name="title" size="50" value="" type="checkbox">骨科 -->
									
									</td>
							</tr>
							<tr>
								<th></th>
								<td><input class="btn btn-primary btn6 mr10" value="保存用户信息"
									type="submit"> <input class="btn btn6"
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