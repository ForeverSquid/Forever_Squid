<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
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
	<form action="send!register" method="post">
		公司名称：<input type="text" name="name" id="name"><br/>
		公司编号：<input type="text" name="bianhao" id="bianhao"><br/>
		负责人姓名：<input type="text" name="fuzeren_name" id="fuzeren_name"><br/>
		负责人电话：<input type="text" name="fu_tel" id="fu_tel"><br/>
		公司电话：<input type="text" name="gong_tel" id="gong_tel"><br/>
		公司密码：<input type="text" name="password" id="password"><br/>
		<input type="submit" value="注册">
	</form>
  </body>
</html>
