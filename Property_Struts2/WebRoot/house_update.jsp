<%@ page language="java" import="java.util.*,com.Forever.vo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'house_update.jsp' starting page</title>
    
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
  		String id=session.getAttribute("id").toString();
  	%>
  	<h2>住户信息修改：</h2>
	<form id="form1" name="form1" action="send!house_update?house_update_id=<%=id %>" method="post">
		户主名：<input type="text" name="huzhu_name" id="huzhu_name" value="<%=user.getHuzhu_name() %>"><br/>
		密码：<input type="text" name="password" id="password" value="<%=user.getPassword() %>"><br/>
		人口数：<input type="text" name="renkou_count" id="renkou_count" value="<%=user.getRenkou_count() %>"><br/>
		楼房面积：<input type="text" name="area" id="area" value="<%=user.getArea() %>"><br/>
		<input type="submit" value="修改">
	</form>
  </body>
</html>
