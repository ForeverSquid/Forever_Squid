<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<meta charset="utf-8">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Forever发布平台</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<%-- <body style="background-image: url('<%=request.getContextPath()%>/images/topAndLunbo/xing.png');"> --%>
<body>
	<a name="top" id="top"></a>
	
	<!-- 页头 -->
	<%@ include file="pages/top.jsp"%>
	
	<!-- 主页背景音乐控制
	<div align="center">
		<audio controls="controls" autoplay="autoplay">
    		<source src="<%=request.getContextPath()%>/mp3/开往春天的地铁.mp3"/>
    	</audio>
	</div>
	 -->
	 
	<!-- 轮播图 -->
	<%@ include file="../../plug-in/carousel/index.jsp"%>
	

    
	<!-- 音乐人展示 -->
	<%@ include file="MusicPeop.jsp" %>

	
	<!-- 国外轮播图 -->
	<%@ include file="pages/index4.jsp"%>

	<br />
	<br />
	
	
	<!-- 音乐 -->
	<%@ include file="MusicWorker.jsp" %>	
	<br />
	<br />
	
	<!-- 论坛 -->
	<%@ include file="luntan.jsp" %> 
	
	<br />内容3
	<br />
	<br />
	
	<!-- 页脚 -->
	<%@ include file="pages/footer.jsp"%>
	
</body>
</html>
