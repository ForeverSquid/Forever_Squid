<%@page language="java" import="java.util.*,com.Forever.vo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'house_left.jsp' starting page</title>
    
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
		HouseUser user=new HouseUser();
		user=(HouseUser)session.getAttribute("House_user"); 
		session.setAttribute("id", user.getDanyuan());
	%>
	
	<h5><%=user.getHuzhu_name() %>欢迎您！</h5>
	<h4>本人基本信息：<a href="house_update.jsp" target="_top">修改本人基本信息</a></h4>
	工号:<%=user.getDanyuan() %><br/>
	姓名：<%=user.getHuzhu_name() %><br/>
	密码：<%=user.getPassword() %><br/>
	教学楼号：<%=user.getRenkou_count() %><br/>
	所属区号：<%=user.getArea() %><br/>
	
	<h4>相关查询：</h4>
	1.<a href="send!showdian?danyuan=<%=user.getDanyuan() %>" target="rightFrame">所属部门查询</a><br/>
	2.<a href="send!showshui?danyuan=<%=user.getDanyuan() %>" target="rightFrame">请假情况查询</a><br/>
	3.<a href="send!showre?danyuan=<%=user.getDanyuan() %>" target="rightFrame">个人曾获奖励查询</a><br/>
	<a href="send!showwygl?danyuan=<%=user.getDanyuan() %>" target="rightFrame"></a>
	
  </body>
</html>
