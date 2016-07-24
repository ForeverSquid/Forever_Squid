<#include "commons/top.ftl" encoding="utf-8">
	<form id="form1" name="form1" action="${ppath}/user/login" method="post">
	<table align="center" border="0">
		<tr>
			<td colspan="2">
				<#assign lerror="${lerror}"/>
				<#if lerror??>
					<font color="red">${lerror}</font>
				</#if>
				<br />
				&nbsp;
			</td>
		</tr>
		<tr>	
			
			<td>
				用户名:<input type="text" name="username" id="username"/>
			</td>
		</tr>
		<tr>
			
			<td>
				密&nbsp;码:<input type="text" name="password" id="password"/><br/>
			</td>
		</tr>
		<tr>
			<td>
				<input type="image" border="0" src="${ppath}/static/images/button_submit.gif" />
			&nbsp;
				<a href="${ppath}/user/rmain"><img border="0"
					src="${ppath}/static/images/button_register_now.gif" /></a>
			</td>
		</tr>
	</table>
	</form>
<#include "commons/bottom.ftl" encoding="utf-8">