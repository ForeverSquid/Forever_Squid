<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'houst_fenping.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<frameset rows="19%,*" cols="*" frameborder="yes" border="1"
	bordercolor="blue">
	<frame src="image/top.png" name="yetou">
	<frameset rows="*" cols="20%,*" frameborder="yes" border="1"
		bordercolor="blue">
		<frame src="house_left.jsp" name="leftFrame">
		<frame src="Page/housewelcome.jsp" name="rightFrame">
	</frameset>
	
</frameset>


<body>
  </body>
</html>
