<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	
	var petIds = 0;

	$(function() {
		//1.获取被选中的id

		$("#batchDel").click(function() {
			var ids = $(".ids:checked");

			//获取被选中的id,封装成一个字符串的参数
			var parma = "";
			for (var i = 0; i < ids.length; i++) {
				//如果是最后一个去掉&
				if (i == (ids.length - 1)) {
					parma += "petId=" + $(ids[i]).val();
				} else {
					parma += "petId=" + $(ids[i]).val() + "&";
				}
			}

			//alert(parma);

			$.get("delPetById?" + parma, function(data) {
				window.location.reload();
			})
		});
		
		////在显示静态模之前触发  可以写初始化数据
		$("#myModal").on("show.bs.modal", function() {
			init();
			//alert("----");
			//获取当前 ID  查询  把值赋值给模态框
			//alert(petIds);
			$.getJSON("findPetById?petId="+petIds,function(data){
				
				$("#showPetId").val(petIds);
				$("#showPetName").val(data.petName);
				$("#showPetBirth").val(data.petBirthDate);
				
				$("#showPetType").find("option[value='"+data.petType.typeId+"']").prop("selected",true);
				$("#showPetOwner").find("option[value='"+data.petOwner.ownerId+"']").prop("selected",true);

			});
		});
		//点击提交
	$("#btn_submit").click(function(){
		
		$("#myFrom1").submit();
		
		
	});
		
		
		

	})
	
	//赋值
	function getPetId(petId){
		petIds = petId;
	}
	
	
	//加载宠物类型和主人信息
	function init() {
		//get的请求方式，返回的是json对象。 类型
	 /* 	$.getJSON("findPetType", function(data) {

			//获取对应类型的 select
			var types = $("#showPetType");
			types.empty();
			//循环多个类型
			$.each(data, function(index, type) {
				//<option value="1">猫</option>
				var $option = $("<option value='"+type.typeId+"'>"
						+ type.typeName + "</option>");
				types.append($option);
			});

		})  */
		
		//主人信息
	/* 	$.getJSON("findPetOwner", function(data) {
			//获取对应宠物主人信息的 select
			var owners = $("#showPetOwner");
			owners.empty();
			//循环多个类型
			$.each(data, function(index, owner) {
				//<option value="1">猫</option>
				var $option = $("<option value='"+owner.ownerId+"'>"
						+ owner.ownerName + "</option>");
				owners.append($option);
			});
		})  */
		
		$.ajax({
			url:"findPetType",
			async:false,
			success:function(data){
				//获取对应类型的 select
				var types = $("#showPetType");
				types.empty();
				//循环多个类型
				$.each(data, function(index, type) {
					//<option value="1">猫</option>
					var $option = $("<option value='"+type.typeId+"'>"
							+ type.typeName + "</option>");
					types.append($option);
				});
			}
		})
		
		$.ajax({
			url:"findPetOwner",
			async:false,
			success:function(data){
				//获取对应宠物主人信息的 select
				var owners = $("#showPetOwner");
				owners.empty();
				//循环多个类型
				$.each(data, function(index, owner) {
					//<option value="1">猫</option>
					var $option = $("<option value='"+owner.ownerId+"'>"
							+ owner.ownerName + "</option>");
					owners.append($option);
				});
			}
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
		<div class="search-wrap">
			<div class="search-content">
				<form action="#" method="post">
					<table class="search-tab">
						<tr>
							<th width="120">宠物主人:</th>
							<td><select name="search-sort" id="">
									<option value="">全部</option>
									<option value="19">赵丽颖</option>
									<option value="20">范冰冰</option>
							</select></td>
							<th width="70">宠物类型:</th>
							<td><select name="search-sort" id="">
									<option value="">全部</option>
									<option value="19">猫</option>
									<option value="20">狗</option>
							</select></td>
							<th width="70">宠物名称:</th>
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
							<th>宠物编号</th>
							<th>宠物名称</th>
							<th>宠物生日</th>
							<th>宠物类型</th>
							<th>宠物主人</th>
							<th>操作</th>

						</tr>

						<c:forEach items="${petList}" var="pet" varStatus="vs">
							<tr>
								<td class="tc"><input name="id[]" class="ids"
									value="${pet.petId }" type="checkbox"></td>
								<td class="tc">${vs.index+1 }</td>
								<td><a href="UserInfo.html">${pet.petId }</a></td>
								<td>${pet.petName}</td>
								<td><fmt:formatDate value="${pet.petBirthDate}"
										pattern="yyyy-MM-dd" /></td>
								<td>${pet.petType.typeName }</td>
								<td>${pet.petOwner.ownerName }</td>
								<td><a class="link-update" href="javascript:void(0)"
									data-toggle="modal" data-target="#myModal"
									onclick="getPetId(${pet.petId })">修改</a> <input
									value="${pet.petId}" type="hidden"> <a class="link-del"
									href="#">删除</a></td>
							</tr>
						</c:forEach>
					</table>
					<!-- 					<div class="list-page">2 条 1/1 页</div> -->

					<!-- 分页 -->
					<nav aria-label="Page navigation">
						<ul class="pagination">
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<c:forEach begin="1" end="${pageInfo.pages}" step="1"
								varStatus="vs">
								<li><a href="findPet?page=${vs.index}">${vs.index}</a></li>
							</c:forEach>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>

				</div>
			</form>
		</div>
	</div>
	<!--/main-->


	<!-- 模态框  修改 -->

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
					<form class="form-horizontal" role="form" action="updatePet"
						id="myFrom1" name="myFrom1">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">宠物编号:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="showPetId"
									name="showPetId" placeholder="请输入名字" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">宠物名称:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="showPetName"
									name="showPetName" placeholder="请输入姓">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">宠物生日:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="showPetBirth"
									name="showPetBirth" placeholder="请输入姓">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">宠物类型:</label>
							<div class="col-sm-10">
								<select class="form-control" name="showPetType" id="showPetType">
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">宠物主人:</label>
							<div class="col-sm-10">
								<select class="form-control" name="showPetOwner"
									id="showPetOwner">
								</select>
							</div>
						</div>


					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="btn_submit">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>



</body>
</html>