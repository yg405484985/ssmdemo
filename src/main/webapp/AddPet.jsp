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
		//maxDate: '2017-10-01', //最大日期
		//minDate: '2010-01-01',//最小日期
		//autoclose : true,
		//todayBtn : true,
		//todayHighlight : true,
		//todayBtn : "linked"

		});

	});

	//加载宠物类型和主人信息
	function init() {
		//get的请求方式，返回的是json对象。 类型
		$.getJSON("findPetType", function(data) {

			//获取对应类型的 select
			var types = $("#petType");

			//循环多个类型
			$.each(data, function(index, type) {
				//<option value="1">猫</option>
				var $option = $("<option value='"+type.typeId+"'>"
						+ type.typeName + "</option>");
				types.append($option);
			});

		})

		//主人信息
		$.getJSON("findPetOwner", function(data) {
			//获取对应宠物主人信息的 select
			var owners = $("#petOwner");

			//循环多个类型
			$.each(data, function(index, owner) {
				//<option value="1">猫</option>
				var $option = $("<option value='"+owner.ownerId+"'>"
						+ owner.ownerName + "</option>");
				owners.append($option);
			});
		})

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
				<form action="addPet" method="post" id="myform" name="myform">
					<table class="insert-tab" width="100%">
						<tbody>

							<tr>
								<th><i class="require-red">*</i>宠物名称：</th>
								<td><input class="common-text required" id="petName"
									name="petName" size="50" value="" type="text"></td>
							</tr>
							<tr>
								<th><i class="require-red">*</i>宠物年龄：</th>
								<td>


									<div class='input-group date col-md-4' id="myStartTime">
										<span class="input-group-addon">日期:</span> <input type='text'
											name="petBirthDate" class="form-control" /> <span
											class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>



								</td>
							</tr>
							<tr>
								<th width="120"><i class="require-red">*</i>宠物类型：</th>
								<td><select name="petType.typeId" id="petType"
									class="required">
										<!-- 										<option value="1">猫</option> -->
										<!-- 										<option value="19">狗</option> -->
										<!-- 										<option value="20">老鼠</option> -->
								</select></td>
							</tr>
							<tr>
								<th width="120"><i class="require-red">*</i>宠物主人：</th>
								<td><select name="petOwner.ownerId" id="petOwner"
									class="required">
										<!-- 										<option value="">范冰冰</option> -->
										<!-- 										<option value="19">赵丽颖</option> -->
										<!-- 										<option value="20">李师师</option> -->
								</select></td>
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