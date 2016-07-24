<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh">
  <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        
    </head>
<body>
	<c:set var="usrid" value='${empty sessionScope.bbsuser?"999": sessionScope.bbsuser.id}'></c:set>
	<c:import url="article.do?curpage=1&usrid=${usrid}&action=page"></c:import>

  
</body>
</html>
