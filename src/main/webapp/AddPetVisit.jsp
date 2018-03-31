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
		//加载日期控件
		$("#myStartTime").datetimepicker({
			format : 'YYYY-MM-DD',//日期格式化，只显示日期
			locale : 'zh-CN' //中文化
		});
	});

	function init() {
		//通过ajax加载类型和
		$.getJSON("getTypeAjax", function(data) {
			$("#typeid").empty();
			$.each(data, function(index, petType) {
				var $op = $("<option value='"+petType.typeId+"'>"
						+ petType.typeName + "</option>");
				$("#typeid").append($op);
			});
		});

		//加载宠物主人信息  对应的主人信息
		$.getJSON("getOwnerAjax", function(data) {
			$("#ownerId").empty();
			$.each(data, function(index, petOwner) {
				var $op = $("<option value='"+petOwner.petOwnerId+"'>"
						+ petOwner.petOwnerName + "</option>");
				$("#ownerId").append($op);
			});
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
				<form action="PetVisit.jsp" method="post" id="myform" name="myform">
					<table class="insert-tab" width="100%">
						<tbody>
							<tr>
								<th width="120"><i class="require-red">*</i>宠物：</th>
								<td><select name="vetId" id="vetId" class="required">
										<option value="">-请选择看病的宠物</option>
										<option>旺财</option>
										<option>大毛</option>

								</select></td>
							</tr>
							<tr>
								<th><i class="require-red">*</i>病例描述：</th>
								<td>
									<!-- <input class="common-text required" id="title"
									name="petName" size="50" type="text"> --> <textarea rows="2"
										cols="100"></textarea>
								</td>
							</tr>
							<tr>
								<th><i class="require-red">*</i>看病时间：</th>
								<td>


									<div class='input-group date col-md-4' id="myStartTime">
										<span class="input-group-addon">日期:</span> <input type='text'
											class="form-control" name="petDate" /> <span
											class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th width="120"><i class="require-red">*</i>责任医生：</th>
								<td><select name="vetId" id="vetId" class="required">
										<option value="">-请选择医生</option>
										<option>李医生</option>

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