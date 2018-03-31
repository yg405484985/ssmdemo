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
<link href="css/admin_login.css" rel="stylesheet" type="text/css" />
<title>登录</title>
</head>
<body>
	<div class="admin_login_wrap">
		<h1>&nbsp;</h1>
		<div class="adming_login_border">
			<div class="admin_input">
				<form action="index.jsp" method="post">
					<ul class="admin_items">
						<li><label for="user">用户名：</label> <input type="text"
							name="username" value="admin" id="user" size="40"
							class="admin_input_style" /></li>
						<li><label for="pwd">密码：</label> <input type="password"
							name="pwd" value="admin" id="pwd" size="40"
							class="admin_input_style" /></li>
						<li><input type="submit" tabindex="3" value="提交"
							class="btn btn-primary" /></li>
					</ul>
				</form>
			</div>
		</div>
		<p class="admin_copyright">
			<a tabindex="5" href="#" target="_blank">返回首页</a> &copy; 2016 Powered
			by <a href="#" target="_blank">中科宏图</a>
		</p>
	</div>
</body>
</html>