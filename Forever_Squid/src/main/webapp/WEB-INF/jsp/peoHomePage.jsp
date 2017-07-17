<%@ page language="java" import="java.util.*,com.Forever.model.*"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/zeroModal.css" />
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/zeroModal.js"></script>
<style type="text/css">
ol {
	counter-reset: li;
	list-style: none;
	*list-style: decimal;
	font: 13px 'trebuchet MS', 'lucida sans';
	padding: 0;
	margin-bottom: 4em;
	text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
}

ol ol {
	margin: 0 0 0 2em;
}

.rounded-list a {
	position: relative;
	display: block;
	padding: .4em .4em .4em 2em;
	*padding: .4em;
	margin: .8em 0;
	background: #ddd;
	color: #444;
	text-decoration: none;
	border-radius: .3em;
	transition: all .3s ease-out;
}

.rounded-list a:hover {
	background: #eee;
}

.rounded-list a:hover:before {
	transform: rotate(360deg);
}

.rounded-list a:before {
	content: counter(li);
	counter-increment: li;
	position: absolute;
	left: -1.3em;
	top: 50%;
	margin-top: -1.3em;
	background: #87ceeb;
	height: 2em;
	width: 2em;
	line-height: 2em;
	border: .3em solid #fff;
	text-align: center;
	font-weight: bold;
	border-radius: 2em;
	transition: all .3s ease-out;
}
</style>

</head>
<body>
	<!-- 页头 -->
	<%@ include file="pages/top.jsp"%>


	<div class="container">
		<header>
		<div class="detail">
			<div class="name"><%=((User) session.getAttribute("user")).getUsername()%></div>
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
				<div style="width:200px;left:220px;">
					<ol class="rounded-list">
						<li><a href="javascript:_iframe()">修改详细信息</a></li>
					</ol>
				</div>
				<div class="right-con">
					<div class="main-page temp firstP">个人主页</div>
					<div class="doc temp">
						档案<br><%=((Userhome) session.getAttribute("huser")).getRegion()%>
					</div>
					<div class="songs temp">
						上传歌曲
						<form name="Form2" action="<%=path%>/upload/fileUpload.jhtml?fl=<%=((User) session.getAttribute("user")).getId()%>"
							method="post" enctype="multipart/form-data">
							<input type="file" name="file">
							 <input type="submit"
								value="upload" />
						</form><br><br><%=((Userhome) session.getAttribute("huser")).getMusic()%>
						<embed src="<%=((Userhome) session.getAttribute("huser")).getMusic()%>">
					</div>
					<div class="record temp">asdas</div>
					<div class="photo temp">
						<img src="images/touxiang/1.jpg" />
						<img src="images/touxiang/2.jpg" />
						<img src="images/touxiang/3.jpg" />
						<img src="images/touxiang/4.jpg" />
						<img src="images/touxiang/5.jpg" />
						<img src="images/touxiang/6.jpg" />
					</div>
					<div class="audio temp">
						<img alt="" src="images/zhuanji.png"/>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/js/peoHomeJquery.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			$(".mid-nav span").on(
					"click",
					function() {
						$(this).addClass('selected').siblings().removeClass(
								'selected')
						$(".right-con div").eq($(this).index()).addClass(
								"firstP").siblings().removeClass("firstP")
					});
		})
	</script>
	<script>
		function _iframe() {
			zeroModal.show({
				title : '填写详细信息',
				iframe : true,
				url : 'href/secondRegister.jhtml',
				width : '80%',
				height : '80%',
				cancel : true
			});
		}
	</script>
	<!-- 页脚 -->
	<%@ include file="pages/footer.jsp"%>
</body>
</html>
