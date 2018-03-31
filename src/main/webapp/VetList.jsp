<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		$("#myModal").on("show.bs.modal", function() {
			alert("开启了");
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
		<div class="search-wrap">
			<div class="search-content">
				<form action="#" method="post">
					<table class="search-tab">
						<tr>

							<th width="70">查找条件:</th>
							<td><select name="search-sort" id="">
									<option value="">全部</option>
									<option value="19">电话号码</option>
									<option value="20">名称</option>
							</select></td>
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
						<a href="AddUser.html"><i class="icon-font"></i>新增作品</a> <a
							id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
					</div>
				</div>
				<div class="result-content">
					<table class="result-tab" width="100%">
						<tr>
							<th class="tc" width="5%"><input class="allChoose" name=""
								type="checkbox"></th>
							<th>序号</th>
							<th>医生编号</th>
							<th>医生名称</th>
							<th>医生电话</th>
							<th width="30%">医生特长</th>
							<th>操作</th>

						</tr>

						<c:forEach items="${vetList}" var="vet" varStatus="vs">

							<tr>
								<td class="tc"><input name="id[]" value="58"
									type="checkbox"></td>
								<td class="tc">${vs.index+1 }</td>
								<td><a href="UserInfo.html">${vet.vetId}</a></td>
								<td>${vet.vetName}</td>
								<td>${vet.vetPhone}</td>
								<td><c:forEach items="${vet.specList}" var="spec">
									${spec.specName},
								 </c:forEach></td>
								<td><a class="link-update" href="javascript:void(0)"
									data-toggle="modal" data-target="#myModal">修改</a> <a
									class="link-del" href="javascript:void(0)">删除</a></td>
							</tr>
						</c:forEach>
					</table>
					<div class="list-page">2 条 1/1 页</div>
				</div>
			</form>
		</div>
	</div>
	<!--/main-->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
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
							<label for="firstname" class="col-sm-2 control-label">宠物编号:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="firstname"
									placeholder="请输入名字">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">宠物编号:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									placeholder="请输入姓">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">宠物生日:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									placeholder="请输入姓">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">宠物类型:</label>
							<div class="col-sm-10">
								<select class="form-control">
									<option></option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">宠物主人:</label>
							<div class="col-sm-10">
								<select class="form-control">
									<option></option>
								</select>
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
	</div>
</body>
</html>