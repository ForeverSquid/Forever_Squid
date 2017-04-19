<%@ page language="java" import="java.util.*,com.Forever.model.*"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="position:fixed;width:100%;height:6%;background-color:black;">
	<%@ include file="mas.jsp"%>

	<div align="right">
		<c:set var="user1" value="${SessionScope.user}" />
		
		<c:if test="${empty user}">
			<a href="<%=request.getContextPath()%>/href/login.jhtml"
				style="color:yellow">登录</a>&nbsp;<a
				href="<%=request.getContextPath()%>/href/register.jhtml"
				style="color:yellow">注册</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		<c:if test="${!empty user}">
			<span style="color:yellow;">欢迎${user.username }!</span>&nbsp;&nbsp;<a style="color:yellow;"
				href="<%=request.getContextPath()%>/method/param/delsession.jhtml">退出当前用户</a>
		</c:if>

	</div>
</div>
<br />
<br />

<div style="background-color:#000000;height: 10%">
	<div style="float:right;width:40%;">
		<h1 style="color:white;">
			<p>音乐发布、微博、空间的某某系统</p>
		</h1>
	</div>
	<div style="float:right;width:50%;height:100%;">
		<a href="#"> <img width="20%" height="100%"
			src="<%=request.getContextPath()%>/images/logo.png" /></a>
	</div>
</div>
<%@ include file="../../../plug-in/navigation/index.jsp"%><!-- 导航栏 -->

<%--     //并行div
	<div style="float:right;width:500px;height:20%;">
		<a href="#">模块1</a>
	</div>
	<div style="float:right;width:100px;">
		<a href="#">模块2</a>
	</div>--%>





