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

		//在显示静态模之前触发  可以写初始化数据
		/* $("#myModal").on("show.bs.modal", function() {
			alert("开启了");
		}); */

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
			<form name="myform" id="myform" method="post">
				<div class="result-title">
					<div class="result-list">
						<a href="AddUser.html"><i class="icon-font"></i>新增作品</a> <a
							id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
					</div>
				</div>
				<div class="search-wrap">
			<div class="search-content">
					<table class="search-tab">
						<tr>
							<th width="120">宠物编号:</th>
							<td width="200"><font size="32px" color="green">9527</font></td>
							<th width="200">宠物名称:</th>
							<td><font size="32px" color="green">旺财</font></td>
						</tr>
					</table>
			</div>
		</div>
				<div class="result-content">
					<table class="table table-hover table-bordered" width="100%">
						<tr>
							<th class="tc" width="5%"><input class="allChoose" name=""
								type="checkbox"></th>
							<th>序号</th>
							<th>病例信息</th>
							<th>就诊时间</th>
							<th>责任医生</th>
							<th>宠物主人</th>
						</tr>

						<tr>
							<td class="tc"><input name="petId" id="petId"
								value="${pet.petId}" type="checkbox"></td>
							<td class="tc">1</td>
							<td>今天好的吃多了，拉肚子</td>
							<td>2017-7-12</td>
							<td><a class="link-del" href="javascript:void(0)"
								data-toggle="modal" data-target="#myModalVet">李医生</a></td>
							<td><a class="link-del" href="javascript:void(0)"
								data-toggle="modal" data-target="#myModalOwner">范冰冰</a></td>

						</tr>
						<tr>
						<td class="tc"><input name="petId" id="petId"
										value="${pet.petId}" type="checkbox"></td>
							<td class="tc">2</td>
							<td>皮肤过敏</td>
							<td>2017-7-13</td>
							<td><a class="link-del" href="javascript:void(0)"
								data-toggle="modal" data-target="#myModalVet">李医生</a></td>
							<td><a class="link-del" href="javascript:void(0)"
								data-toggle="modal" data-target="#myModalOwner">范冰冰</a></td>
						
						</tr>
					</table>
					<div class="list-page">2 条 1/1 页</div>
				</div>
			</form>
		</div>
	</div>
	<!--/main-->
	</div>
	
		<!-- 模态框（Modal）---显示宠物主人的详细信息 -->
	<div class="modal fade" id="myModalOwner" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改pet</h4>
				</div>
				<div class="modal-body">
					<!-- 需要更改的数据 -->
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">主人编号:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="firstname"
									 readonly="readonly" value="9527">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">主人姓名:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									 readonly="readonly" value="赵丽颖">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">所在城市:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									 readonly="readonly" value="深圳">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">详细地址:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									 readonly="readonly" value="华美居D区">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">电话号码:</label>
							<div class="col-sm-10">
								<span>18812345678</span>
							</div>
						</div>


					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	
		<!-- 模态框（Modal）---显示医生的详细信息 -->
	<div class="modal fade" id="myModalVet" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">兽医详细信息</h4>
				</div>
				<div class="modal-body">
					<!-- 需要更改的数据 -->
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">医生编号:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="firstname"
									 readonly="readonly" value="1001">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">医生姓名:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									 readonly="readonly" value="李医生">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">医生电话:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									 readonly="readonly" value="1001">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">医生专长:</label>
							<div class="col-sm-10">
								<span>吃饭，睡觉，打豆豆</span>
							</div>
						</div>


					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	
</body>
</html>