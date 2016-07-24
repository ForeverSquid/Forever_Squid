<#include "commons/top.ftl">
<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="viewproduct.xhtml">
			
			</a>
		</td>
	</tr>
</table>

<p>
<#list plist as item>
<table align="center" bgcolor="#008800" cellspacing="2" cellpadding="3"
		border="0" width="60%">
		<tr bgcolor="#FFFF88">
			<td bgcolor="#FFFFFF">
				<img src="${ppath}/static/images/${item.product.pic}">
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td width="100%" bgcolor="#cccccc">
				${item.itemid}
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				<b><font size="4"> 
					
				${item.attr1}&nbsp;${item.product.name}
				</font>
				</b>
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				<font size="3"><i></i>
				</font>
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				<#if item.unitcost?? >
					有
					<#else>
					无
				</#if>
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				${item.listprice}
			</td>
		</tr>

		<tr bgcolor="#FFFF88">
			<td>
				<a href="${ppath}/cart/add/item/${item.itemid}/qty/1"><img border="0"
						src="${ppath}/static/images/button_add_to_cart.gif" />
				</a>
			</td>
		</tr>
	</table>
</#list>
	<#include "commons/bottom.ftl">