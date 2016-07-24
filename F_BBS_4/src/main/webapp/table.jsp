<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="contentwrapper">
	<div class="main_content">
		<%@include file="top.jsp" %>
		
		<div class="row-fluid">
			<div class="span12">
				<h3 class="heading">快来灌水</h3>

				<c:if test="${sessionScope.bbsuser!=null}">
					<div class="alert alert-error">
						<a class="close" data-dismiss="alert">×</a> <strong>${sessionScope.msg}${sessionScope.bbsuser.username}</strong>
					</div>
				</c:if>
				<c:if test="${sessionScope.bbsuser==null}">
					<div class="alert alert-error">
						<a class="close" data-dismiss="alert">×</a> <strong>${sessionScope.msg}</strong>
					</div>
				</c:if>
				<!-- 分页页数 -->
				<c:set value="${sessionScope.bbsuser}" var="user"></c:set>
				<c:set value="${user.id}" var="uid" ></c:set><!-- 当前登录用户 -->
				<c:if test="${user!=null}">

					<div class="btn-group sepH_b">
						<button data-toggle="dropdown" class="btn dropdown-toggle">
							行数 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">


							<li><a href="user.do?action=page&row=5&userid=${uid}">默认5行</a></li>
							<li><a href="user.do?action=page&row=10&userid=${uid}">每页10行</a></li>
							<li><a href="user.do?action=page&row=2&userid=${uid}">每页2行</a></li>
						</ul>
					</div>


				</c:if>


				<table class="table table-bordered table-striped table_vam"
					id="dt_gal">
					<thead>
						<tr>

							<th class="table_checkbox">序号</th>
							<th style="width: 50px">发布人</th>
							<th style="width: 100px">主帖标题</th>
							<th style="width: 420px">主帖内容</th>
							<th style="width: 60px">发布日期</th>
							<th style="width: 60px">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:set value="${requestScope.alist_pb }" var="pb" ></c:set>
						<c:forEach items="${requestScope.alist_pb.data}" var="article" varStatus="status">

										
								<tr>

									<td>${status.count}</td>
									<td>${article.user.username }
									<a href="upload/.jpg"
										
										title="" class="cbox_single thumbnail">

											<img src="user.do?id=${article.user.id}&action=pic"
											alt="" style="height: 50px; width: 50px" />
									</a>
									
									
									</td>
									<td>${article.title }
									<!-- 有子贴 -->
									<c:if test="">
									
									<a 
										href="?id=#rshow" 
										title="灌水" 
										data-toggle="modal"
										id="myp" 
										data-backdrop="static"
										onclick="rshow();">
											
									</a>
									<!-- 无子贴 -->
									</c:if>	
									
									<c:if test="">
									
										
									</c:if>	
									
									</td>
									<td>${article.content }</td>
									<td>${article.datetime }</td>
									<td>
											
										
											<c:set var="uid" value="999"></c:set>
											<c:if test="${!empty sessionScope.bbsuser}">
												<c:set var="uid" value="${sessionScope.bbsuser.id}"></c:set>
											</c:if>
											
												
											<!-- 锚点传值 -->
											<a href="#rshow" title="灌水" data-toggle="modal"
											id="myp" data-backdrop="static"
											onclick="rshow(${article.id},${uid},${article.user.id});">
												 <i class="icon-eye-open"></i>
											</a>
											
											<!-- 是本人贴可以删除和修改 -->
										<c:if test="${!empty sessionScope.bbsuser.id && sessionScope.bbsuser.id==article.user.id}">
											<a
												
												href="article.do?id=${article.id }&action=delz"
												title="删除本帖"><i class="icon-trash"></i>
											
											</a>
										</c:if>
										
										
									</td>
										
								</tr>
							</c:forEach>
					</tbody>
				</table>



			</div>
		</div>
		<c:if test="${pb.maxPage>1 }">
			<%@include file="page.jsp"%>
		</c:if>

	</div>


</div>