<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<h3 align="center"><a href="#top" target="_self">返回顶部</a></h3> 
<div style="background-color:#000000; width:100%; height:30%">
	<div style="width: 100%;height: 13%"></div>

	
	<table style="width: 100%;height: 30%">
		<th>.</th>
		<th><h4>网站</h4></th>
		<th><h4>服务</h4></th>
		<th><h4>帮助</h4></th>
		<th><h4>特色</h4>	</th>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td></td>
			<td align="center"><a href="<%=request.getContextPath()%>/href/somePeop.jhtml">几人组</a></td>
			<td align="center"><a href="<%=request.getContextPath()%>/href/copyright.jhtml">版权声明</a></td>
			<td align="center"><a href="<%=request.getContextPath()%>/href/userHelp.jhtml">用户指南</a></td>
			<td align="center"><a href="<%=request.getContextPath()%>/href/bbs.jhtml">社区</a></td>
		</tr>
		<tr>
			<td></td>
			<td align="center"><a href="<%=request.getContextPath()%>/href/aboutUs.jhtml">关于我们</a></td>
			<td align="center"><a href="<%= request.getContextPath() %>/href/musicService.jhtml">音乐人服务</a></td>
			<td align="center"><a href="<%= request.getContextPath() %>/href/introduction.jhtml">功能介绍</a></td>
			<td align="center"></td>
		</tr>
		<tr>
			<td></td>
			<td align="center"><a href="<%=request.getContextPath() %>/href/joinUs.jhtml">加入我们</a></td>
			<td align="center"><a href="<%=request.getContextPath() %>/href/feedback.jhtml">意见反馈</a></td>
			<td align="center"></td>
			<td align="center"></td>
		</tr>
		<tr>
			<td></td>
			<td align="center"><a href="<%=request.getContextPath() %>/href/href.jhtml">友情链接</a></td>
			<td align="center"><a href="<%=request.getContextPath() %>/href/business.jhtml">商务合作</a></td>
			<td align="center"></td>
			<td align="center"></td>
		</tr>
	</table>
</div>
<div style="background-color:#666666; width:100%; height:4%">
<!-- 证件号仿照a8网  只为达到美观需求 -->
<h5 align="center">Copyright 2004-2016 A8.COM All rights reserved.粤ICP备13012456号-5   粤网文[2011]0391-058号 增值业务许可证B2-20090206 网络视听许可证1909352号</h5>
</div>
</body>
</html>
