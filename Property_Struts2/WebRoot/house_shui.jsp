<%@ page language="java" import="java.util.*,com.Forever.vo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'house_right.jsp' starting page</title>
    
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
		CostUser cuser=new CostUser();
		cuser= (CostUser)session.getAttribute("cuser");
	%>
	<br/><br/><br/><br/>
	<table align="center" border="2"  width="300" height="120"">
		<tr>
			<th>请假流水编号</th>
			<th>请假时间</th>
		</tr>
		<tr>
			<td><%=cuser.getShui()%></td>
			<td><%=cuser.getCshui_date()%></td>
		</tr>
	</table>
	<h4></h4><a href="Page/housewelcome.jsp">点击小区留言</a>
  </body>
</html>
