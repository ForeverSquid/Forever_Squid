<%@ page language="java" import="java.util.*,com.Forever.dao.*,com.Forever.vo.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'top.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<script type="text/javascript" src="js/ajax.js"></script>

<body>
	<%
		IUserDao dao = new UserDaoImpl();
		List<MesUser> list = new ArrayList<MesUser>();
		list = dao.queryMesinf();
	%>

	<%@ include file="Page/top.jsp"%>

	<h2>&nbsp;&nbsp;人员登录：</h2>
	
	<div style="float:left;width:300px;">
	--------------------------------------------------------------------------
		<h3>公司人员登录:</h3>
		<form name="form1" action="send!houstLogin" method="post">
			<input type="text" name="huzhu_name" id="huzhu_name" maxlength="5" />
			<span id="errname"></span><br /> <input type="password"
				name="password" id="password" /> <span id="errpwd"></span><br /> <input
				type="submit" value="登录" />
		</form>
		<img src="image/biankuang.png" height="40" />

		<h3>系统管理人员登录:</h3>
		<form name="form2" action="send!vipLogin" method="post">
			<input type="text" name="guanli_name" id="guanli_name" /> <span
				id="errglname"></span><br /> <input type="password"
				name="guanli_password" id="guanli_password" /> <span id="errglpwd"></span><br />
			<input type="submit" value="登录" />
		</form>
		<img src="image/biankuang.png" height="40" />

	</div>
	<div style="float:right;width:700px;">
		<h3>公司新闻</h3><br/>
		<%
			if(!list.isEmpty()){
				for(int i = 0 ;i<list.size();i++){
		%>
				<p><%=list.get(i).getInf() %></p>	
		<%	
				}
			}
		%>
	</div>
	<!-- 	<a href="user1!add">dianji</a> -->
	<script type="text/javascript">
		document.getElementById("huzhu_name").onblur = function() {
			var username = this.value;
			if (username.length == 0) {
				document.getElementById("errname").innerHTML = "<a style='color:red';>用户名必须填</a>";
			} else {
				document.getElementById("errname").innerHTML = "";
			}
		}
		document.getElementById("password").onblur = function() {
			var username = this.value;
			if (username.length == 0) {
				document.getElementById("errpwd").innerHTML = "<a style='color:red';>密码必须填</a>";
			} else {
				document.getElementById("errpwd").innerHTML = "";
			}
		}
		document.getElementById("guanli_name").onblur = function() {
			var username = this.value;
			if (username.length == 0) {
				document.getElementById("errglname").innerHTML = "<a style='color:red';>用户名必须填</a>";
			} else {
				document.getElementById("errglname").innerHTML = "";
			}
		}
		document.getElementById("guanli_password").onblur = function() {
			var username = this.value;
			if (username.length == 0) {
				document.getElementById("errglpwd").innerHTML = "<a style='color:red';>密码必须填</a>";
			} else {
				document.getElementById("errglpwd").innerHTML = "";
			}
		}
	</script>

</body>
</html>
