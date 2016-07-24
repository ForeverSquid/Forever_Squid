<%@ page language="java" import="java.util.*,com.Forever.vo.*,com.Forever.dao.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'housewelcome.jsp' starting page</title>
    
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
		HouseUser user1=new HouseUser();
		user1=(HouseUser)session.getAttribute("House_user");
		MesUser user=new MesUser();
		List<MesUser> list=new ArrayList<MesUser>();
		IUserDao dao=new UserDaoImpl();
		list=dao.queryMes();
	%>
	<h1 align="center" style="color:red">欢迎住户登录本物业系统！</h1><br/>
	<h2>小区留言</h2>
	<form action="send!setMes" method="post">
		<input type="text" name="mes" id="mes"/>
		<input type="hidden" name="mdanyuan" value="<%=user1.getDanyuan() %>">
		<input type="submit" value="留言">
	</form>
	<hr/>
历史记录：
	<table align="center">
		<tr>
			<th>发言单元号</th>
			<th>时间</th>
			<th>内容</th>
		</tr>
		<%
			for(MesUser u:list){
			%>
				<tr>
					<td><%=u.getDanyuan() %></td>
					<td><%=u.getTime() %></td>
					<td align="right"><%=u.getMes() %></td>
				</tr>
			<%	
			}
		%>
		
	</table>
  </body>
</html>
