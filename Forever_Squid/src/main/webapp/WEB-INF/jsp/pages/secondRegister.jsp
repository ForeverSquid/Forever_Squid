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

<title>My JSP 'secondRegiser.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<div align="center">
		<form action="peohome/secondRegister.jhtml" method="post">
			昵称:<input type="text" name="Stage_name" /> <br>
 			地区:<input type="text" name="region" /> <br> 
			头像上传:<input type="file" name="pic"/>  <br>
			个人标签:<input type="text" name="Identity_tag"/><br>
			个人风格:<input type="text" name="Style_tags"/><br> 
			个性签名:<input type="text" name="Personalized_signature" /><br><br>
			<input type="submit" value="修改">
			<input type="hidden" name="id" value="${user.id}" />
		</form>
	</div>


</body>
</html>
