<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>Heliblob</title>
      <link rel="stylesheet" href="<%=path %>/css/style_game.css">
</head>
<body>
  <div id="switch"><a href="" class="reset">Reset</a><br>Spacebar to boost!</div>
    <div id="details"></div>
    <div id="gameover"></div>
    <div id="start"><a href="" id="startBtn">开始!</a><br><span style="font-size:24px">操作: 按 空格键</span></div>
    <canvas></canvas>
  <script src='<%=path %>/js/perlin_game.js'></script>
  <script src='<%=path %>/js/keydrown.min_game.js'></script>

    <script src="<%=path %>/js/index_game.js"></script>

</body>
</html>
