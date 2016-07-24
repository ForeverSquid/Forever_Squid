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
	<h4 align="right">欢迎您<%=guser.getGuanli_name() %>先生&nbsp;<a href="index.jsp">点击退出登录</a></h4>
	<h4>管理所有住户费用,点击清算所有用户前一天费用：</h4>
	<h2><a href="send!qingsuan">清算</a></h2>
	
	<h4><a href="send!zhiyuan">点击查看小区职员表</a></h4>
	<a href="addzhiyuan.jsp">点击添加职员</a>
	
	<h3>以下是所有住户的所有信息：</h3>
	<table border="1" align="center">
		<tr>
			<th>单元号</th>
			<th>户主名</th>
			<th>密码</th>
			<th>人口数</th>
			<th>楼面积</th>
			<th>电费剩余</th>
			<th>上次交电费日期</th>
			<th>水费剩余</th>
			<th>上次交水费日期</th>
			<th>热费剩余</th>
			<th>上次交热费日期</th>
			<th>物业管理费剩余</th>
			<th>上次交物业管理费日期</th>
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
				<td><%=user.getWygl() %></td>
				<td><%=user.getCwygl_date() %></td>
				<td><%=user.getBeizhu() %></td>
			</tr>
		<%	
		}
		
	%>
	</table>
  </body>
</html>
