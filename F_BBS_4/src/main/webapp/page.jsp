 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="usrid" value='${empty sessionScope.bbsuser?"999": sessionScope.bbsuser.id}'></c:set>    
<div class="pagination">
	<ul>	
		
			<c:if test="${pb.curPage>1}">
				<li>
					<a href="article.do?curpage=1&usrid=${usrid}&action=page">首页</a>
				</li>
			
			</c:if>
			<c:if test="${pb.curPage==1}">
				<li>
					<a href="#" onclick="return false;" >首页</a>
				</li>
			</c:if>
			
			
	   
		<li>
		<c:if test="${pb.curPage>1}">
		<a href="article.do?curpage=${pb.curPage-1}&usrid=${usrid}&action=page">前一页</a>
		</c:if>
		<c:if test="${pb.curPage==1}">
			<a href="#" onclick="return false;">前一页</a>
		</c:if>
		</li>
		<c:forEach begin="1" end="${pb.maxPage}" step="1" var="i">
			<li>
			<c:if test="${pb.curPage!=i}">
			<a href="article.do?curpage=${i}&usrid=${usrid}&action=page">${i}</a>
			</c:if>
			<c:if test="${pb.curPage==i}">
				<a href="#" onclick="return false;">[${i}]</a>
			</c:if>
			</li>
		</c:forEach>
		<li>
		<c:if test="${pb.curPage<pb.maxPage}">
			<a href="article.do?curpage=${pb.curPage+1}&usrid=${usrid}&action=page">下一页</a>
		</c:if>
		
		
		
		<c:if test="${pb.curPage==pb.maxPage}">
			<a href="#" onclick="return false;">下一页</a>
		</c:if>
		</li>
		
		<c:if test="${pb.curPage<pb.maxPage}">
			<li>
				<a href="article.do?curpage=${pb.maxPage}&usrid=${usrid}&action=page">尾页</a>
			</li>
			</c:if>
			<c:if test="${pb.curPage==pb.maxPage}">
				<li>
					<a href="#" onclick="return false;">尾页</a>
				</li>
			</c:if>
		
		
		
		
	</ul>
</div>