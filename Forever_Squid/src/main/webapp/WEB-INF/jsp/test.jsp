<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'test.jsp' starting page</title>

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
	<%-- <c:set var="user1"  value="${user}"/>
		<c:if test="${empty user}">
			空值
		</c:if>asd
		<c:if test="${!empty user}">
			有值
		</c:if>zzz --%>

	<form id="form1" action="sdf.jsp" method="post">
		<input type="text" />
		<button id="submit" type="submit">注册</button>
	</form>

	<script src="<%=request.getContextPath()%>/js/jquery.min.js"
		type="text/javascript"></script>
	<script >
		$("#submit").live('click',function(){
			  $("form").submit();
		})
	</script>
</body>
</html>
