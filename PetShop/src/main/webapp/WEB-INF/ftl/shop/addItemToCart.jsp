<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



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
			<form name="form1" method="post"
				action="cartupdate.xhtml">
				
				<table align="center" bgcolor="#008800" border="0" cellspacing="2"
					cellpadding="5" >
					<tr bgcolor="#cccccc">
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							<b></b>
						</td>
						<td width="100">
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							&nbsp;
						</td>
					</tr>

			
			
					
					
					<tr bgcolor="#FFFF88">
						<td>
							<b> 
							
							
							<a href="viewitem.xhtml?itemid=<s:property value="#cart.itemid"/>"><s:property value="#cart.itemid"/></a>
							
							</b>
						</td>
						<td>
							
						
						</td>
						<td>
							
							
						</td>
						<td align="center">
						
							
						</td>
						<td>
							
														
						</td>
						<td align="right">
							
							<br/>
						</td>
						<td align="right">
						
							
						</td>
						<td>
							<a href="cartremove.xhtml?itemid=<s:property value="#cart.itemid"/>"><img border="0"
									src="../images/button_remove.gif" />
							</a>
						</td>
					</tr>
					
					
			
					<tr bgcolor="#FFFF88">
						<td colspan="7" align="right">
							<b>
							</b>							
							
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
				<center>


				</center>
			</form>


			<br />
			<center>
				<a href="cartcheckout.xhtml"><img border="0"
						src="../images/button_checkout.gif" />
				</a>
			</center>


		</td>


		<td valign="top" width="20%" align="right">
				<%@include file="favItem.jsp" %>	
		</td>

	</tr>
</table>

<br>
<%@include file="../commons/banner.jsp" %>		
<%@include file="../commons/bottom.jsp"%>