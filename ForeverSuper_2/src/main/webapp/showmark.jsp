<%@ page language="java" import="java.util.*,com.Forever.service.*,com.Forever.po.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'showmark.jsp' starting page</title>

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
	<%
		session.setAttribute("sc", request.getParameter("sc"));
		UserService service = new UserService();
		int d = Integer.parseInt(session.getAttribute("id").toString());
		int dd = Integer.parseInt(request.getParameter("sc").toString());
		service.addmark(d,dd);
	%>
	<h2 align="center">收藏成功！<a href="show.jsp">查看</a>我所有收藏的帖子,<a href="welcome.jsp">返回主页<a></a></h2>
</body>
</html>
