<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" class="no-js">
<head>

<title>register</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset_login.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/supersized_login.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style_login.css">

</head>

<body oncontextmenu="return false">
	<%@ include file="pages/top.jsp" %>
	<div class="page-container">
		<h1>欢迎加入某某大家庭</h1><br/>
		<form id="form1"  action="<%=path %>/method/param/register.jhtml" method="get">
			<div>
				<input type="text" name="username"
					placeholder="姓名" autocomplete="off" />
			</div>
			<div>
				<input type="text" name="password"
					placeholder="密码" oncontextmenu="return false"
					onpaste="return false" />
			</div>
			<div>
				<input type="text" name="password_2"
					placeholder="密码确认" oncontextmenu="return false"
					onpaste="return false" />
			</div>
			<div>
				<input type="text" name="sex" id="sex" placeholder="性别"/>
			</div>
			<div>
				<input type="text" name="email" "
					placeholder="email" autocomplete="off" />
			</div>
			<div>
				<input type="text" name="qq" 
					placeholder="QQ" autocomplete="off" />
			</div>
			<div>
				<input type="text" name="birthday"
					placeholder="birthday" autocomplete="off" />
			</div>
			<button id="submit" type="submit">注册</button>
		</form>
		<br/>
		<a href="login.jsp">登录</a>
		
		<div class="connect">
			<p>If we can only encounter each other rather than stay with each
				other,then I wish we had never encountered.</p>
			<p style="margin-top:20px;">如果只是遇见，不能停留，不如不遇见。</p>
		</div>
	</div>
	<div class="alert" style="display:none">
		<h2>消息</h2>
		<div class="alert_con">
			<p id="ts"></p>
			<p style="line-height:70px">
				<a class="btn">确定</a>
			</p>
		</div>
	</div><br/><br/><br/><br/><br/><br/>
	<%@ include file="pages/footer.jsp" %>
	<!-- Javascript -->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/supersized.3.2.7.min_login.js"></script>
	<script src="<%=request.getContextPath()%>/js/supersized-init_login.js"></script>
	<script>
		$(".btn").click(function(){
			is_hide();
		})
		var u = $("input[name=username]");
		var p = $("input[name=password]");
		var rp = $("input[name=password_2]");
		var s = $("input[name=sex]");
		var e = $("input[name=email]");
		var Q = $("input[name=qq]");
		var b = $("input[name=birthday]");
		$("#submit").live('click',function(){
			var reg = /^[0-9]{4}[-]?[0-9]{2}[-]?[0-9]{2}+$/;
			var regQQ = /^[0-9]+$/
			if(!regQQ.exec(Q.val())){
				$("#ts").html("QQ填写格式不正确~");
				is_show();
				return false;
			}
			if(u.val() == '' || p.val() =='' || rp.val() =='' || s.val() ==''
			   || e.val() =='' || Q.val() =='' || b.val() =='' ){
				$("#ts").html("必须都填写，不能为空~");
				is_show();
				return false;
			}else if(p.val() != rp.val()){
				$("#ts").html("两次密码填写不一致~");
				is_show();
				return false;
			}else if(!reg.exec(u.val())){
				$("#ts").html("生日格式有误！xxxx-xx-xx或者xxxxxxxx");
				is_show();
				return false;
			}else{
				 $("form").submit(); 
			}
		});
		window.onload = function(){
			$(".connect p").eq(0).animate({"left":"0%"}, 600);
			$(".connect p").eq(1).animate({"left":"0%"}, 400);
		}
		function is_hide(){ $(".alert").animate({"top":"-40%"}, 300) }
		function is_show(){ $(".alert").show().animate({"top":"45%"}, 300) }
		</script>
</body>

</html>

