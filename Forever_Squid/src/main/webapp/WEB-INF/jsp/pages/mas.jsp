	<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>		<style type="text/css">
			*{
				margin:0;
				padding:0;
			}
			#gg {
			    background: #222 none repeat scroll 0 0;
			    /* bottom: 0; */
			    top:5px;
			    box-shadow: 10px 0 5px #000;
			    height: 23px;
			    line-height: 23px;
			    opacity: 0.6;
			    position: absolute;
			    width: 80%;
			    z-index: 9999;
			    
			}
			#gg a {
			    color: #fff;
			    letter-spacing: 2px;
			    text-shadow: 0 1px 0 #000;
			}
			.close a {
			    float: right;
			    margin: 0 10px 0 0;
			}
			.bulletin {
			    background: rgba(0, 0, 0, 0) url("./images/bulletin.gif") no-repeat scroll 0 0;
			    color: #fff;
			    float: left;
			    height: 23px;
			    margin: 0 0 0 20px;
			    min-height: 23px;
			    overflow: hidden;
			}
			.bulletin a {
			    float: left;
			}
			.bulletin li {
			    height: 23px;
			    padding-left: 25px;
			}
			a{
				text-decoration:none;
			}
			#gg li a:hover{
				color:red;
			}
			ul li{
				list-style-type:none;
			}

	</style>
	<div id="gg">
		<div class="close">
			<a href="javascript:;" onclick="$('#gg').slideUp('slow');" title="关闭">×</a>
			<div id="feedb">
				<a href="#" title="欢迎订阅本站" target="_blank" class="image">
					<img src="./images/feed.gif" alt="feed" />
				</a>
			</div>
			<div class="bulletin">
				<ul style="margin-top: 0px;">
					<li>
						<a href="#" title="文艺范早安晚安心语：黑夜里代替阳光的东西是信念">本网站正在建设中，联系Q：1064464687  敬请期待~~~</a>
					</li>
					<li>
						<a href="#" title="关于青春、海边唯美的图片">关于青春、海边唯美的图片——我想给你全部全部的希望及光芒，免你忧伤赐你一腔孤勇闯向远方</a>
					</li>
					<li>
						<a href="#" title="[优美文章]过一个冷暖自知的冬天">[优美文章]过一个冷暖自知的冬天——守着自己的小小天地，过着属于自己的小日子，亦可清欢。</a>
					</li>
					<li>
						<a href="#" title="文艺范手绳编织技巧，各种精美好看的绳结~">文艺范手绳编织技巧，各种精美好看的绳结~</a>
					</li>
					<li>
						<a href="#" title="原创句子吧 关于爱情的经典语录">原创句子吧 关于爱情的经典语录</a>
					</li>
				</ul>
			</div>
		</div>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/app4.js"></script>
		<script type="text/javascript">
			    /*用法*/
			    $(document).ready(function(){
			    	$(".bulletin").Scroll({line:1,speed:1000,timer:2000});//修改此数字调整滚动状态			    });
		</script>
	</div>
</body>
</html>