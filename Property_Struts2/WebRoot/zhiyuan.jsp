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
	<%
		List<ZhiyuanUser> list=new ArrayList<ZhiyuanUser>();
		list=(List<ZhiyuanUser>)session.getAttribute("zhiyuan");
	%>
	
	<h3>以下是所有职员的所有信息：</h3>
	<table border="1" align="center">
		<tr>
			<th>id</th>
			<th>姓名</th>
			<th>职位</th>
			<th>月薪</th>
		</tr>
	<%
		for(ZhiyuanUser user:list){
		%>
			<tr>
				<td><%=user.getId() %></td>
				<td><%=user.getName() %></td>
				<td><%=user.getZhiwei() %></td>
				<td><%=user.getYuexin() %></td>
			</tr>
		<%	
		}
	%>
	<a href="guanli.jsp">点击返回管理</a>
	</table>
  </body>
</html>
