<#assign spring=JspTaglibs["http://www.springframework.org/tags"]/>
<#assign form=JspTaglibs["http://www.springframework.org/tags/form"] />
<#include "commons/top.ftl">
		<script type="text/javascript">
			$(function(){
				$('#lang_1').empty();
				$.ajax({
				
				url:"${ppath}/category/show",
				dataType:"text json",
				type:"post",
				success:function(data){
					$(data).each(function(i){
						var s="<option value='"+data[i].catid+"'>"+data[i].name+"</option>";
						$('#lang_1').append(s);
					});
				}
				});
			});
		
		</script>
<br/>
	<@form.form name="form1" id="form1" commandName="account" action="${ppath}/user/register"
	 method="post">

	<TABLE cellpadding=10 cellspacing=0 align=center border=1 width="400"
		bgcolor=#dddddd>
		<TR>
			<TD>
				<FONT color=darkgreen>
					<H3>
						用户信息
					</H3>
				</FONT>
				<TABLE border=0  bgcolor=#FFFF88  width="100%">
					<TR bgcolor=#FFFF88>						
						<TD>
						 	用户名：<input type="text" name="username" id="password" />
						 	<@form.errors	path="username" />
						</TD>
					</TR>
					<TR bgcolor=#FFFF88>
						
						<TD>
							 新密码：<input type="password" name="password" id="password"/>
							<@form.errors   path="password" />
						</TD>
					</TR>
					<TR bgcolor=#FFFF88>
						
						<TD>
							 重输密码：<input type="password" name="repassword" id="repassword"/>
							<@form.errors   path="repassword" />
						</TD>
					</TR>
				</TABLE>





				<FONT color=darkgreen><H3>
							账户信息
					</H3>
				</FONT>

				<TABLE bgcolor="#FFFF88" border=0 
					bgcolor=#FFFF88 width="100%">
					<TR bgcolor=#FFFF88>
						
						<TD>
							  真实姓名： <input type="text" id="xm" name="xm"/>
						 <@form.errors	path="xm" />
						</TD>
					</TR>
					
					<TR bgcolor=#FFFF88>
						
						<TD>
							 邮箱： <input type="text" id="email" name="email"/>
						 <@form.errors	path="email" />
						</TD>
					</TR>
					
					<TR bgcolor=#FFFF88>
						
						<TD>
							 
							  地址： <input type="text" id="address" name="address"/>
						 <@form.errors	path="address" />
						</TD>
					</TR>
					
					
				</TABLE>


				<FONT color=darkgreen><H3>
						 喜爱设置
					</H3>
				</FONT>

				<TABLE bgcolor="#FFFF88" border=0 cellpadding=3 cellspacing=1 width="100%">
					<TR bgcolor=#FFFF88>
						
						<TD>
							语言设置：<select name="profile.lang" id="lang">
								 	 <option value="English">
								 	  	英语
								 	 </option>
								 	 <option value="Chinese">
								 	 	汉语
								 	 </option>
								  </select>
						</TD>
					</TR>
					<TR bgcolor=#FFFF88>
						
						<TD>
							喜爱宠物：<select name="profile.category.catid" id="lang_1">
								 	
								  </select>
						</TD>
					</TR>
					
				</TABLE>
	</TABLE>
	
	<BR>
	<CENTER>
		<input border=0 type="image" src="${ppath}/static/images/button_submit.gif" />
	</CENTER>
	</@form.form>
	<#if rerror??>
		<font color="red">${rerror}</font>
	</#if>

<#include "commons/bottom.ftl">