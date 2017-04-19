<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'peoHomePage.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/peoHomePage.css" />

</head>
<body>
	<!-- 页头 -->
	<%@ include file="pages/top.jsp"%>


	<div class="container">
		<header>
		<div class="detail">
			<div class="name">老帅比</div>
			<p class="website">www.eeewerwgsd.com</p>
		</div>
		<nav> <span class="mid-nav"> <span class="selected">个人主页</span>
			<span>档案</span> <span>歌曲</span> <span>专辑</span> <span>相册</span> <span
			id="last-child">视频</span>
		</span> </nav> <span class="img"> 照片 </span> </header>
		<div class="content">
			<div class="left">
				<div class="vna">
					<span class="visit"> 访问
						<div>1.6万</div>
					</span> <span class="audition"> 试听
						<div>1.6万</div>
					</span>
				</div>

				<div class="two-img">
					<a href="">关注</a> <a href="">分享</a>
				</div>

				<div class="identity me-tag">
					身份标签
					<div class="spec-tags">
						<a href="" class="single-tag">作曲</a>
					</div>

				</div>
				<div class="style me-tag">
					风格标签
					<div class="spec-tags">
						<a href="" class="single-tag">流行</a>
					</div>
				</div>
			</div>
			<div class="right">
				<div class="right-con">
					<div class="main-page temp firstP">个人主页</div>
					<div class="doc temp">档案</div>
					<div class="songs temp">歌曲</div>
					<div class="record temp">专辑</div>
					<div class="photo temp">相册</div>
					<div class="audio temp">视频</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<%=request.getContextPath()%>/js/peoHomeJquery.js"
		type="text/javascript"></script>
	<script type="text/javascript">
$(function(){
    $(".mid-nav span").on("click",function(){
        $(this).addClass('selected').siblings().removeClass('selected')
        $(".right-con div").eq($(this).index()).addClass("firstP").siblings().removeClass("firstP")
    });
})
</script>
	<!-- 页脚 -->
	<%@ include file="pages/footer.jsp"%>
</body>
</html>
