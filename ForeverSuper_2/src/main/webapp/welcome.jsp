<%@ page language="java"
	import="java.util.*,com.Forever.dao.*,com.Forever.po.*"
	pageEncoding="UTF-8"%>
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

<title>My JSP 'welcome.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta charset="UTF-8">


</head>

<body>

	<!-- <div class="md-modal md-effect-1" id="modal-1">
		<div class="md-content">
			<button class="md-close">X</button>

			<div></div>

		</div>
	</div>

	

	<script>
		var polyfilter_scriptpath = '/js/';
	</script>

	<script src="js/index.js"></script> -->

	<marquee onmouseout=this.start() onmouseover=this.stop()
		behavior="scroll" width="100%" height="16px" SCROLLDELAY="320"
		scrollamount="30">多媒体信息发布系统，系统仍建设中，出现问题请联系相关工作人员，Q1064464687</marquee>
	<h1>
		<p align="center">多媒体信息发布系统</p>
	</h1>
	<%
		session.setAttribute("id", session.getAttribute("id"));
			session.setAttribute("user",session.getAttribute("user") );
			if (session.getAttribute("user") == null) {
	%>
	<h4 align="right">
		<a href="login.jsp">登录</a>&nbsp;<a href="register.jsp">注册</a>
	</h4>
	<%
		} else {
	%>
	<h4 align="right">
		欢迎<%=session.getAttribute("user")%>&nbsp;<a href="login.jsp">点击退出登录</a>
	</h4>

	<%
		}
			UserDao dao = new UserDao();
			List<AllUser> list = dao.welcome_show();
	%>
	<h4 align="right">
		<a href="upload.jsp">点击上传作品</a>
	</h4>
	<!--以上是网页头--------------------------------------------------------------------------------------以下是网页体-->
	<table align="center" border="1" width="85%">
		<tr>
			<th>作者</th>
			<th>上传作品</th>
			<th>文件名称</th>
			<th>上传时间</th>
			<th>操作</th>
		</tr>
		<%
			for (int i = 0; i < list.size(); i++) {
			
		%>
		<tr>
			<td align="center"><%=list.get(i).getUsername()%></td>
			<td align="center"><embed src="<%=list.get(i).getAddress()%>"
					loop="11" hidden="false" width="200px" height="150px" /></td>
			<td align="center"><%=list.get(i).getFName()%></td>
			<td align="center"><%=list.get(i).getDate()%></td>
			<td align="center">
				<button id="aa" value="<%=list.get(i).getId_zhujian()%>">点赞</button>
				<br /> 当前集赞数量：<span id="resID"><%=list.get(i).getZan()%></span><br />
				<a href="pinglun.jsp?flag=<%=list.get(i).getId_zhujian()%>">查看评论</a>
				<a href="showmark.jsp?sc=<%=list.get(i).getId_zhujian()%>">收藏</a>
			</td>
		</tr>
		<%
			}
		%>

	</table>
	<!-- <img src="imageJsp/showimage.jsp" width="300" height="300"/> -->

	<script type="text/javascript">
		//创建AJAX异步对象，即XMLHttpRequest
		function createAJAX() {
			var ajax = null;
			try {
				ajax = new ActiveXObject("microsoft.xmlhttp");
			} catch (e1) {
				try {
					ajax = new XMLHttpRequest();
				} catch (e2) {
					alert("你的浏览器不支持ajax，请更换浏览器");
				}
			}
			return ajax;
		}
	</script>


	<script type="text/javascript">
		//定位文本框，同时提供焦点失去事件
		document.getElementById("aa").onclick = function() {
			//NO1)
			var h_id = this.value;
			var ajax = createAJAX();
			//NO2)
			var method = "GET";
			var url = "${pageContext.request.contextPath}/foreversuper.action?h_id="
					+ h_id + "&time=" + new Date();
			ajax.open(method, url);
			//NO3)
			ajax.send(null);

			//--------------------------------------------------------等待

			//NO4)
			ajax.onreadystatechange = function() {
				if (ajax.readyState == 4) {
					if (ajax.status == 200) {
						//NO5)
						var tip = ajax.responseText;
						//NO6)
						document.getElementById("resID").innerHTML = tip;
					}
				}
			}
		}
	</script>
</body>
</html>
