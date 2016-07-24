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
<title>using commons Upload to upload file</title>
</head>
<style>
* {
	font-family: "宋体";
	font-size: 14px
}
</style>
<body>
	<form id="form1" name="form1" method="post" action="upload/servlet/.do"
		enctype="multipart/form-data">
		<table border="0" align="center">
			<tr>
				<td>上传人：</td>
				<td><%=session.getAttribute("user")%></td>
			</tr>
			<tr>
				<td>上传文件：</td>
				<td><input name="file" type="file" size="20"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="提交"> <input
					type="reset" name="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>
