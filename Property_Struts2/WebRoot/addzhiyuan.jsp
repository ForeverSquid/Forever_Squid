<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP '1.jsp' starting page</title>

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
	<%@ include file="Page/top.jsp"%><br />
	<br />
	<br />
	<div align="center">
		
		<h2>职员注册</h2>
		<form align="center" action="send!zupdate" method="post">
			姓名<input type="text" name="zname" id="zname" /> <br />
			<div align="center"><span id="sp"></span></div>
			 职位<input type="text" name="zzhiwei" id="zzhiwei" /><br /> 月薪<input
				type="text" name="zyuexin" id="zyuexin" /><br /> <input
				type="submit" value="增加"><br />
		</form>
		
	</div>
	<script type="text/javascript">
		document.getElementById("zname").onblur = function() {
			var username = this.value;//杰克
			//NO1)
			var ajax = createAJAX();
			//NO2)
			var method = "POST";
			var url = "${pageContext.request.contextPath}/UserServlet?time="
					+ new Date().getTime();
			ajax.open(method, url);
			//设置AJAX请求头为POST，他会将请求体中的汉字自动进行UTF-8的编码
			ajax.setRequestHeader("content-type",
					"application/x-www-form-urlencoded");
			//NO3)
			var content = "username=" + username;
			ajax.send(content);

			//===========================================等待

			//NO4)
			ajax.onreadystatechange = function() {
				if (ajax.readyState == 4) {
					if (ajax.status == 200) {
						//NO5)
						var tip = ajax.responseText;
						document.getElementById("sp").innerHTML = "";
						document.getElementById("sp").innerHTML = tip;
					}
				}
			}
		}
	</script>
</body>
</html>
