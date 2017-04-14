<%@ page language="java" import="java.util.*,com.Forever.vo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'guanli.jsp' starting page</title>
    
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
	<%@ include file="Page/top.jsp"%>
	<%
		GuanliUser guser=(GuanliUser)session.getAttribute("guanli_user");
		List<AllUser> list=new ArrayList<AllUser>();
		list=(List<AllUser>)session.getAttribute("guanli_list");
	%>
	<h4 align="right">欢迎您&nbsp;<%=guser.getGuanli_name() %>&nbsp;King&nbsp;<a href="index.jsp">点击退出登录</a></h4>
	<h4>管理所有公司人员的一切权利：</h4>
	<h2><a href="send!qingsuan"></a></h2>
	<h4><a href="writeInf.jsp">点击编辑对外发布信息</a></h4>
	<h4><a href="send!zhiyuan">点击查看公司管理人员信息</a></h4>
	<a href="addzhiyuan.jsp">点击添加公司管理人员</a>
	
	<h3>以下是所有住户的所有信息：</h3>
	<table border="1" align="center">
		<tr>
			<th>工号</th>
			<th>人员姓名</th>
			<th>密码</th>
			<th>教学楼号</th>
			<th>所属区号</th>
			<th>所属部门号</th>
			<th>入职时间</th>
			<th>请假流水号</th>
			<th>请假日期</th>
			<th>获奖数量</th>
			<th>获奖时间日期</th>
			<th>备注</th>
		</tr>
	<%
		for(AllUser user:list){
		%>
			<tr>
				<td><%=user.getDanyuan() %></td>
				<td><%=user.getHuzhu_name() %></td>
				<td><%=user.getPassword() %></td>
				<td><%=user.getRenkou_count() %></td>
				<td><%=user.getArea() %></td>
				<td><%=user.getDian() %></td>
				<td><%=user.getCdian_date() %></td>
				<td><%=user.getShui() %></td>
				<td><%=user.getCshui_date() %></td>
				<td><%=user.getRe() %></td>
				<td><%=user.getCre_date() %></td>
				<td><%=user.getBeizhu() %></td>
			</tr>
		<%	
		}
		
	%>
	</table>
  </body>
</html>
