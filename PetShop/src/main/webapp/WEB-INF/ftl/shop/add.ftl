

<#include "commons/top.ftl">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="top" width="20%" align="left">
			<table align="left" bgcolor="#008800" border="0" cellspacing="2"
				cellpadding="2">
				<tr>
					<td bgcolor="#FFFF88">
						<a href="main.xhtml"><b><font color="BLACK" size="2">&lt;&lt; 主菜单</font>
				</b></a>
					</td>
				</tr>
			</table>
		</td>
		<td valign="top" align="center">
			<h2 align="center">
				
			</h2>
			<form name="form1" method="post" action="${ppath}/cart/update">
				
				<table align="center" bgcolor="#008800" border="0" cellspacing="2"
					cellpadding="5" >
					<tr bgcolor="#cccccc">
						<td>
							宠物编号
						</td>
						<td>
							产品序号
						</td>
						<td>
							宠物描述
						</td>
						<td>
							<b>是否有宠物</b>
						</td>
						<td width="100">
							宠物单价
						</td>
						<td>
							宠物数量
						</td>
						<td>
							合计
						</td>
						<td>
							
						</td>
					</tr>

					<#assign sum=0>
					<#assign orderid=0>
					<#list clist as cart>
					
					<tr bgcolor="#FFFF88">
						<td>
							<b> 
							
							<input type="hidden" name="ilist" value="${cart.itemid}"/>
							<a href="">
								${cart.itemid}
								<#assign orderid=cart.orderid>
							</a>
							
							</b>
						</td>
						<td>
							${cart.item.product.productid}
						
						</td>
						<td>
							${cart.item.attr1}
							
						</td>
						<td align="center">
							有
							
						</td>
						<td>
							${cart.item.listprice}
														
						</td>
						<td align="right">
							<input type="hidden" name="qty" value="${cart.quantity}"/>
							<input type="number" name="qlist" value="${cart.quantity}"/>
							
							<br/>
						</td>
						<td align="right">
							<#assign sum=sum+cart.item.listprice*cart.quantity>
							${cart.item.listprice*cart.quantity}
						</td>
						<td>
							<a href="${ppath}/cart/del/item/${cart.itemid}/orderid/${cart.orderid}"/><img border="0"
									src="${ppath}/static/images/button_remove.gif" />
							</a>
						</td>
					</tr>
					
					</#list>
			
					<tr bgcolor="#FFFF88">
						<td colspan="7" align="right">
							<b>
							总计：${sum}
							</b>							
							
						</td>
						<td>
						<input type="image" src="${ppath}/static/images/button_update_cart.gif"/>
							
				
						</td>
					</tr>
				</table>
				<center>
					

				</center>
			</form>


			<br />
			<center>
				<a href="${ppath}/cart/orders/orderid/${orderid}"><img border="0"
						src="${ppath}/static/images/button_checkout.gif" />
				</a>
			</center>


		</td>


		

	</tr>
</table>

<br>
	
<#include "commons/bottom.ftl">