<%@ page language="java" import="java.util.*,com.Forever.service.*,com.Forever.po.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'pinglun.jsp' starting page</title>

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
		session.setAttribute("mul_id", request.getParameter("flag"));
		UserService service = new UserService();
		int hid = Integer.parseInt(request.getParameter("flag").toString());
	    List<Com> list = service.queryMes(hid);
	    Iterator<Com> it=list.iterator();
	%>
	<h3 align="right"><a href="welcome.jsp">返回主页</a></h3>
	<form action="pinglun.action" method="post">
		<input type="text" name="mes" id="mes"/>
		<input type="submit" value="评论">
	</form><br/>
	
	<table align="center" border="1" width="80%">
		<th>发言人</th>
		<th>发言时间</th>
		<th>内容</th>
	<%
		while(it.hasNext()){
	    Com c = it.next();
	%>
		<tr>
			<td><%=c.getUsername() %></td>
			<td><%=c.getDates() %></td>
			<td><%=c.getMes() %></td>
		</tr>	
	<%    	
	    } 
	%>
	</table>
	
</body>
</html>
