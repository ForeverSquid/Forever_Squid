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
	
	<h5><%=user.getHuzhu_name() %>先生欢迎您！</h5>
	<h4>住户基本信息：<a href="house_update.jsp" target="_top">修改住户基本信息</a></h4>
	单元号:<%=user.getDanyuan() %><br/>
	户主名：<%=user.getHuzhu_name() %><br/>
	密码：<%=user.getPassword() %><br/>
	人口数：<%=user.getRenkou_count() %><br/>
	楼房面积：<%=user.getArea() %><br/>
	<h6>(单元号例如：3单元501:30501)</h6><br/>
	
	<h4>本用户费用查询：</h4>
	1.<a href="send!showdian?danyuan=<%=user.getDanyuan() %>" target="rightFrame">电费查询</a><br/>
	2.<a href="send!showshui?danyuan=<%=user.getDanyuan() %>" target="rightFrame">水费查询</a><br/>
	3.<a href="send!showre?danyuan=<%=user.getDanyuan() %>" target="rightFrame">供热费查询</a><br/>
	4.<a href="send!showwygl?danyuan=<%=user.getDanyuan() %>" target="rightFrame">物业管理费查询</a>
	
  </body>
</html>
