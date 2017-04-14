<%@ page language="java" import="java.util.*,com.Forever.model.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<title>关于我们</title>
<link rel="stylesheet" href="<%= path%>/css/a8ui.base.css" media="all">
<link rel="stylesheet" href="<%= path%>/css/a8ui.common.css" media="all">
<link rel="stylesheet" href="<%= path%>/css/a8ui.help.css" media="all">
<script src="<%= path%>/js/jquery-1.9.1.min.js"></script>
<script src="<%= path%>/js/ui.base.js"></script>
    
</head>
<body>
<div style="position:fixed;width:100%;height:5%;background-color:black;">
	<div align="right">
		<%
			User user = (User) session.getAttribute("user");
			if (user != null) {
		%>
		<h4 style="color:yellow;">
			欢迎<%=user.getUsername()%>!&nbsp;&nbsp;<a style="color:yellow;"
				href="<%=request.getContextPath()%>/method/param/delsession.jhtml">退出当前用户</a>
		</h4>
		<%
			} else {
		%>
		<a href="<%=request.getContextPath()%>/href/login.jhtml"
			style="color:yellow">登录</a>&nbsp;<a
			href="<%=request.getContextPath()%>/href/register.jhtml"
			style="color:yellow">注册</a>&nbsp;&nbsp;&nbsp;
		<%
			}
		%>
	</div>
</div><br>
<div class="top_fixedpos40">
    <div class="container help_wrapper clearfix">
    	<!--左边菜单-->
    	<div class="help_menu" id="help_menu">
            <p class="main current">网站</p>
            <div class="sub">
                <a href="http://ir.a8.com"  title="A8集团" target="_blank">A8集团</a>
                <a href="/1/2.html" class="curr" title="关于我们">关于我们</a>
                <a href="http://hr.a8.com/"  title="加入我们" target="_blank">加入我们</a>
                <a href="/1/4.html"  title="友情链接">友情链接</a>
            </div>
            <p class="main ">服务</p>
            <div class="sub">
                <a href="/2/1.html"  title="版权声明">版权声明</a>
                <a href="/2/2.html"  title="音乐人服务">音乐人服务</a>
                <a href="/2/3.html"  title="意见反馈">意见反馈</a>
                <a href="/2/4.html"  title="商务合作">商务合作</a>
            </div>
            <p class="main ">帮助</p>
            <div class="sub">
                <a href="/3/1.html"  title="用户指南">用户指南</a>                            
                <a href="/3/2.html"  title="功能简介">功能简介</a>
                <a href="/3/4.html"  title="数字发行">数字发行</a>    
                <a href="/3/3.html"  title="多平台合作">多平台合作</a>
                <a href="/3/5.html"  title="常见问题">常见问题</a>
            </div>
            <p class="main ">特色功能</p>
            <div class="sub">
                <a href="/4/1.html"  title="A8采集器">A8采集器</a>
                <a href="/4/2.html"  title="电子名片">电子名片</a>
                            </div>
            <p class="main "><a href="/5/1.html"  title="合作伙伴">合作伙伴</a></p>
        </div>
        <!--/左边菜单-->
                <!--关于我们右边内容-->
        <div class="help_content help_aboutus">
        	<h2 class="title">关于我们</h2>
            <div class="aboutus">
            	<!--h3 class="title">关于我们</h3-->
                <p><b>•</b> 中国原创音乐发布和某某某的网站<br>
                      <b>•</b> 中国原创音乐有力的推动者<br>
                      <b>•</b> 国内汇聚原创音乐及其元素的平台<br><br>
                      <span>某某某发布网是一个以服务音乐人为目的，提供原创数字音乐为主要内容的音乐人服务平台，我们帮助音乐人完成从创作到数字发行再到推广营销等一系列的经营工作，从而有力的推动中国原创音乐的发展与繁荣。</span>
                      <span>我们志在成为中国原创音乐平台，为音乐人建立起自己的强大的音乐管理平台。</span>
                      <span>我们为原创音乐人提供更多的推广资源、签约机会、成名盈利的模式、线上和线下的交流氛围。</span>
                      <span>此处省略1K字吹牛大话</span>
                 </p>
             </div>
			<h2 class="title">成员介绍</h2>
			 <div class="aboutus">
            	<h3 class="title">成员</h3>
                <p><b>•</b>某某某大帅哥<br>
                      <b>•</b>某某大美眉<br>
                      <b>•</b>大(chou)帅(ba)哥(guai) 永恒玮艺<br>
                 </p>
             </div>	
             <div class="aboutus">
            	<h3 class="title">关于站主</h3>
                <p><b>•</b> 永恒玮艺<br>
                	  <b>•</b> 电话：+86 13121077783<br> 
                      <b>•</b> 邮箱： 15704602359@163.com<br>
                      <b>•</b> 客服QQ：1064464687 （周一至周五 上午9：30--下午6：00）<br>
                      <b>•</b> 
                 </p>
             </div> 
             <div class="aboutus">
            	<h3 class="title"> 站主寄语</h3>
                <p><b>•</b>想玩网站的快来联系我，我们的口号是：玩的开心就对了！  快快向我瞅齐~~~<br>
                 </p>
             </div>	
        </div>   
        <!--/右边内容-->
    </div>
</div>

<%@ include file="../pages/footer.jsp" %>
</body>
</html>