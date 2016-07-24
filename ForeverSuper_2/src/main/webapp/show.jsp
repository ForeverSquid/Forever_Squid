<%@ page language="java" import="java.util.*,com.Forever.po.*,com.Forever.service.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'show.jsp' starting page</title>

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
		UserService service = new UserService();
		List<AllUser> list = service.querymark(Integer.parseInt(session.getAttribute("id").toString()));
		Iterator<AllUser> it = list.iterator();
		
	%>
	<h2 align="center">我收藏的帖子：</h2><br/>
	<h3 align="right"><a href="welcome.jsp">返回主页</a></h3>
	<table align="center" border="1" width="80%">
		<th>作者</th>
		<th>作品</th>
		<th>作品名</th>
	<%	
		while(it.hasNext()){
			AllUser user = it.next();
	%>
		<tr>
			<td><%=user.getUsername() %></td>
			<td><embed src="<%=user.getAddress()%>"
					loop="11" hidden="false" width="200px" height="150px" /></td>
			<td><%=user.getFName() %></td>
		</tr>
	<%		
		}
	%>
	</table>
</body>
</html>
