<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>peopShow.jsp</title>
    <link rel="icon" href="http://main.a8-img.com/static/web/a8.ico" mce_href="http://main.a8-img.com/static/web/a8.ico" type="image/x-icon">
    <link rel="shortcut icon" href="http://main.a8-img.com/static/web/a8.ico" mce_href="http://main.a8-img.com/static/web/a8.ico" type="image/x-icon">
    <link rel="stylesheet" href="http://main.a8-img.com/static/web/css/a8ui.base.css?v=201512080002" media="all">
    <link rel="stylesheet" href="http://main.a8-img.com/static/web/css/a8ui.common.css?v=20140516001" >
    <link rel="stylesheet" href="http://main.a8-img.com/static/web/css/a8ui.layout.css?v=201512080002" >
    <link rel="stylesheet" href="http://main.a8-img.com/static/web/css/a8ui.hfsp.css?v=201512080002" >
    <link rel="stylesheet" href="http://main.a8-img.com/static/web/css/a8ui.focus.css?v=201512080002" >
    <script src="http://main.a8-img.com/static/web/js/jquery-1.9.1.min.js?v=20131206" type="text/javascript"></script>
    <script src="http://main.a8-img.com/static/web/js/a8lib.js?v=201512080002" type="text/javascript"></script>
	<script src="http://main.a8-img.com/static/web/js/jquery.lazyload.js?v=201512080002" type="text/javascript"></script>
	<script type="text/javascript">
	document.domain = 'a8.com';
	$(function(){
		$("img.lazy").lazyload({ effect : "fadeIn",event : "sporty", skip_invisible : false, threshold : 200,failurelimit : 10});
		jQuery.focusblurmenu=function(d,c,g,f){var e=$(d);var a=$(c);var b=e.val();var h=e.width();e.focus(function(){var i=$(this).val();if(i==b){$(this).val("");a.addClass('focus');$(this).animate({width:"+"+g},g).addClass("searchkeyfocus")}});e.blur(function(){var i=$(this).val();a.removeClass('focus');if(i==""){$(this).val(b)}$(this).animate({width:"+"+h},g).removeClass("searchkeyfocus")})};$.focusblurmenu("#searchkey","#top_search","110px","300");
	}); 
    $(window).bind("load", function() {    
        var timeout = setTimeout(function() {$("img.lazy").trigger("sporty")}, 1000);    
    });
	</script>
<link rel="stylesheet" href="http://main.a8-img.com/static/web/templates/css/templates.css?v=201512080002" media="all">
<link rel="stylesheet" href="http://main.a8-img.com/static/web/templates/theme/t01/css/style.css?v=201512080002" media="all">
<script src="http://main.a8-img.com/static/web/js/ui.base.js?v=201512080002"></script>
<script src="http://main.a8-img.com/static/web/js/ui.skin.js?v=201512080002"></script>
<script type="text/javascript" src="http://main.a8-img.com/static/web/js/jquery.easing.1.3.js"></script>
<script type="text/javascript">
	$(function(){
		var tpl_portrait = $(".tpl_portrait");
		var tpl_imgedit = $(".tpl_imgedit");
		tpl_imgedit.hide();
		tpl_portrait.hover(function(){tpl_imgedit.show();},function(){tpl_imgedit.hide();	})
	});
	$(function(){
		$(window).scroll(function(){
			if($(window).scrollTop()+$(window).height()>=$(document).height()-100){
				$('#tpl_leftnav .slide_info').fadeOut(600);
			}else{
				$('#tpl_leftnav .slide_info').fadeIn(500);
			}
		});
	});
    	//�����˵�
	$(function(){
		$('#usr_tool .nav_item').navTools({
			navToolEl:'.nav_dropul',
			openedClass:'hover'
		});
	});
</script>
<style type="text/css">
#o_setcard{ background-image:url(http://main.a8-img.com/static/web/templates/default/004.jpg);}
                #o_setspace{ background-image:url(http://main.a8-img.com/static/web/templates/theme/t01/images/set_pro/001.jpg);}
            .usrdef_titlecolor{color:#fff;}
            .usrdef_maintextcolor{color:#fff;}
            .usrdef_link{color:#38a085;}
            .tpl_cardbox{background:rgba(0,0,0,0.5);}

.LT{background-position:left top;background-repeat:no-repeat;}
.CT{background-position:center top;background-repeat:no-repeat;}
.RT{background-position:right top;background-repeat:no-repeat;}
.RP{background-position:0 0;background-repeat:repeat;}
.CD{background-position:center center;background-repeat:no-repeat;}
.EE{background-size:cover !important;background-position:center center;}
</style>
<!--[if lte IE 8]>
<style type="text/css">
.EE{background-size:100% 100%;}
</style>
<![endif]-->
</head>
<body>
	<%@ include file="pages/top.jsp" %>
<div class="skin_setting">

<!--/顶部导航-->
<div class="o_setskin o_setpro CD" id="o_setspace">
    <div class="container relative clearfix">
        <div id="tpl_leftnav">
                <div class="tpl_left tpl_lefthang">
                    <div class="tpl_portrait gradient">
						<img class="lazy" src="http://main.a8-img.com/static/web/images/web_insert/default_220.jpg" data-original="http://co.a8-img.com/avatar/001/88/96/1889652_avatar_220_0.jpg?_t=3447" width="220" height="220">
											</div>
                    <div class="tpl_count"> <span class="num_visit fl">访问<br>
                        <b>3423</b></span> <span class="num_ting fr">试听<br>
                        <b>9128</b></span>
					</div>

					<div class="tpl_attention">
						<a href="javascript:;" class="attention fl" title="关注"></a>
						<div class="tpl_share fr share_trigger">
							<div class="share_layer share_layerpos1" style="display: none;">
							<div class="share_arrow"></div>
    <div class="share_popico icowrap_30">
    <a title="新浪微博" class="sf30_sina mr1" href="javascript:void(function(){var d=document,e=encodeURIComponent,r='http://v.t.sina.com.cn/share/share.php?url='+e(d.location.href)+'&amp;title='+e(d.title)+'&amp;source=bookmark',x=function(){if(!window.open(r,'sina','toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=330'))location.href=r+'&amp;r=1'};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()};A8.share_stat({uid:'0',id:'1889652'})})()" title="分享到新浪微博"></a>
    <a title="QQ空间" class="sf30_qzone mr1" href="javascript:;" onclick="window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+encodeURIComponent(document.location.href));A8.share_stat({uid:'0',id:'1889652'});return false;"></a>
    <a title="QQ微博" class="sf30_qweibo mr1" href="javascript:;" onclick="toTecentWeibo();A8.share_stat({uid:'0',id:'1889652'});"></a>
    <a title="人人网" class="sf30_renren mr1" href="javascript:window.open('http://share.renren.com/share/buttonshare.do?title='+encodeURIComponent(document.title.substring(0,76))+'&amp;link='+encodeURIComponent(location.href)+'&amp;content=','_blank','scrollbars=no,width=600,height=450,left=75,top=20,status=no,resizable=yes');A8.share_stat({uid:'0',id:'1889652'}); void 0" title="分享到人人网" class="s4"></a>
    <a title="豆瓣网" class="sf30_douban" href="javascript:void(function(){var%20d=document,e=encodeURIComponent,s1=window.getSelection,s2=d.getSelection,s3=d.selection,s=s1?s1():s2?s2():s3?s3.createRange().text:' ',r='http://www.douban.com/recommend/?url='+e(d.location.href)+'&title='+e(d.title)+'&sel='+e(s)+'&v=1',x=function(){if(!window.open(r,'douban','toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=330'))location.href=r+'&r=1'};if(/firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()};A8.share_stat({uid:'0',id:'1889652'});})()" title="分享到豆瓣网" class="s6"></a> 
</div>
<script type="text/javascript">
$(function(){
    var $share_trigger = $(".share_trigger");
    $share_trigger.hover(function(){
        $(this).children(".share_layer").show();
    },function(){
        $(this).children(".share_layer").hide();
    });
});
// 腾讯微博
function toTecentWeibo(){
    var _t = encodeURI(document.title);
    var _url = encodeURIComponent(document.location);
    var _appkey = encodeURI("");//你从腾讯获得的appkey
    var _pic = encodeURI('');//（例如：var _pic='图片url1|图片url2|图片url3....）
    var _site = 'www.a8.com';//你的网站地址
    var _u = 'http://v.t.qq.com/share/share.php?url='+_url+'&appkey='+_appkey+'&site='+_site+'&pic='+_pic+'&title='+_t;
    window.open( _u,'', 'width=700, height=680, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no' );
}
</script>							</div>
						</div>
					</div>
                    <div class="slide_info">
                        <div class="hr_10"></div>
                        <div class="tpl_label_title">身份标签</div>
                        <div class="tpl_label_a">
													<a href="http://so.a8.com/tag/1" class="spc_8" title="作曲" target="_blank">作曲</a>
														<a href="http://so.a8.com/tag/2" class="spc_8" title="作词" target="_blank">作词</a>
														<a href="http://so.a8.com/tag/6" class="" title="演奏" target="_blank">演奏</a>
														<a href="http://so.a8.com/tag/7" class="spc_8" title="演唱" target="_blank">演唱</a>
													</div>
                        <div class="hr_10"></div>
                        <div class="tpl_label_title">风格标签</div>
                        <div class="tpl_label_a">
												  <a href="http://so.a8.com/tag/20" class="spc_8" title="摇滚" target="_blank">摇滚</a>
						  						  <a href="http://so.a8.com/tag/21" class="spc_8" title="流行" target="_blank">流行</a>
						  						  <a href="http://so.a8.com/tag/24" class="" title="民谣" target="_blank">民谣</a>
						  						  <a href="http://so.a8.com/tag/25" class="spc_8" title="R&B" target="_blank">R&B</a>
						  						  <a href="http://so.a8.com/tag/32" class="spc_8" title="Hip-Hop" target="_blank">Hip-Hop</a>
						  					  </div>
                    </div>
<script type="text/javascript">
            $(function(){A8.stat({id:1889652, url:"http://i.a8.com/u/1889652", uid:1889652,
                    rf:"", ref:"http://i.a8.com/u/1889652/card",template:"访问<br><b>${number}</b>",get:"span.num_visit"});});
        </script>                    <!--div class="tpl_notice">
                    <div class="title">
                        <span class="fl">我的公告</span>
                        <span class="notice_ico notice_close"><a href="#" title=""></a></span>
                    </div>
                    <p class="notice_info ff_songti" id="notice_info">亲爱的朋友们，感谢你们对NOWER乐队的关注！现在乐队同名专辑的内容在豆瓣音乐人小站上免费全部发放</p>
                </div>
                <div class="tpl_statistics">
                    <div class="sta_title"><span class="fl">营销平台</span><span class="num">5/12</span></div>
                    <div class="seekbar">
                        <div style="width:30px;" class="ycharts"></div>
                    </div>
                </div>
                <div class="tpl_statistics">
                    <div class="sta_title"><span class="fl">代理歌曲</span><span class="num">836/1000</span></div>
                    <div class="seekbar">
                        <div style="width:30px;" class="dcharts"></div>
                    </div>
                </div--> 
                </div>
            </div>

            <div class="tpl_right">
				<div class="tpl_usertitle">
					<div class="tpl_username">pop六弦</div>
					<span class="tpl_share icowrap_30">
										</span>
				</div>
				<p class="tpl_usersite"><a href="http://i.a8.com/u/1889652" title="pop六弦的个人主页">http://i.a8.com/u/1889652</a></p>
			</div>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function(){
    A8FRIEDSHIPS.is_following({uid:1889652,div:'div.tpl_attention',adddiv:'a.attention'});
})
</script>    

<!-- 个人页面主菜单 -->
<div id="tpl_nav">
    <div class="tpl_nav">
        <div class="container clearfix">
            <ul class="tpl_navlist">
                <li><a href="http://i.a8.com/u/1889652" class="current" title="音乐人">个人主页</a></li>
                <li><a href="http://i.a8.com/u/1889652/profile"   title="档案">档案</a></li>
                <li><a href="http://i.a8.com/u/1889652/music"   title="歌曲">歌曲</a></li>
                <li><a href="http://i.a8.com/u/1889652/album"    title="专辑">专辑</a></li>
                <li><a href="http://i.a8.com/u/1889652/photo"  title="相册">相册</a></li>
                <li class="no_line"><a href="http://i.a8.com/u/1889652/video"  title="视频">视频</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="tpl_main clearfix">
	<div class="container relative clearfix">
    	
        <div class="tpl_right">
                    <div class="tpl_title pro_title">
            	<a title="我的歌曲" href="http://i.a8.com/u/1889652/music" class="pro_music"></a>
                <div class="pro_total">
                	<div class="total_wrap">
                        <a title="我的歌曲" href="http://i.a8.com/u/1889652/music" class="total_title">我的歌曲</a>
                        <span class="total_num">（13）</span>  
                    </div>
                                    </div>
            </div>
            			 <link href="http://main.a8-img.com/static/web/css/player/jplayer.css?v=201512080002" rel="stylesheet" type="text/css" />
            <script type="text/javascript" src="http://main.a8-img.com/static/web/js/player/jquery.jplayer.min.js"></script>
             <script type="text/javascript" src="http://main.a8-img.com/static/web/js/a8.js?v=201512080002"></script>
            
            <script type="text/javascript">
			//<![CDATA[
			 
			$(document).ready(function(){ 
			
				a8.init_home_player('http://main.a8-img.com/static/web/js/player');
			});
			//]]>
			</script>
			 
			
			<div id="jquery_jplayer_1" class="jp-jplayer"></div>
            <div id="jp_container_1" class="jp-audio">
                <div class="jp-type-playlist">
                    <div class="jp-gui jp-interface">
                        <ul class="jp-controls">
                            <li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
                            <li><a href="javascript:;" class="jp-pause" tabindex="1">pause</a></li>
                            <li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
                            <li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
                        </ul>
                        <div class="jp-line"></div>
                        <div class="jp-progress">
                            <div class="jp-seek-bar">
                                <div class="jp-play-bar"></div>
                            </div>
                        </div>
                        <div class="jp-volume-bar">
                            <div class="jp-volume-bar-value"></div>
                        </div>
                        <div class="jp-time-holder">
                            <div class="jp-current-time"></div>
                            <div class="jp-duration"></div>
                        </div>
                        <div class="jp-title"></div>
                    </div>
                    <div class="jp-no-solution">
                        <span>需要更新</span>要发挥媒体你需要安装最新版本的浏览器或更新您的<a href="http://get.adobe.com/flashplayer/" target="_blank">Flash插件</a>.
                    </div>
                </div>
            </div>
 
             
            <div class="tpl_playlist">
            	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="playlist">
                    <tr>
                        <th class="title">歌曲</th>
                        <th>播放</th>
                        <th>收藏</th>
                        <th>分享</th>
                        <th>评论</th>
                    </tr>
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52029167" music_id="52029167" music_url="http://stream15.a8.com/b9a48d911e01f2c83f565b06334d2ab9/584a16cb/a8space/2015/6/13/2015061319223386264.mp3" title="暗恋·">暗恋· - pop六弦</a></td>
                        <td>2443</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52029167" title="收藏" music_id="52029167" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="暗恋· - pop六弦" share_url="http://music.a8.com/view/52029167" music_id="52029167"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="暗恋· - pop六弦" share_url="http://music.a8.com/view/52029167" music_id="52029167"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="暗恋· - pop六弦" share_url="http://music.a8.com/view/52029167" music_id="52029167"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="暗恋· - pop六弦" share_url="http://music.a8.com/view/52029167" music_id="52029167"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="暗恋· - pop六弦" share_url="http://music.a8.com/view/52029167" music_id="52029167"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52029167?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52029141" music_id="52029141" music_url="http://stream15.a8.com/4680cf2cf308ef6b86a5819ef49770be/584a16cb/a8space/2015/6/12/2015061213150988310.mp3" title="暗恋~">暗恋~ - pop六弦</a></td>
                        <td>69</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52029141" title="收藏" music_id="52029141" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="暗恋~ - pop六弦" share_url="http://music.a8.com/view/52029141" music_id="52029141"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="暗恋~ - pop六弦" share_url="http://music.a8.com/view/52029141" music_id="52029141"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="暗恋~ - pop六弦" share_url="http://music.a8.com/view/52029141" music_id="52029141"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="暗恋~ - pop六弦" share_url="http://music.a8.com/view/52029141" music_id="52029141"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="暗恋~ - pop六弦" share_url="http://music.a8.com/view/52029141" music_id="52029141"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52029141?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52029138" music_id="52029138" music_url="http://stream15.a8.com/8160255cd1a985f7cedd1235f1dcfec0/584a16cb/a8space/2015/6/12/2015061209515614982.mp3" title="暗恋">暗恋 - pop六弦</a></td>
                        <td>269</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52029138" title="收藏" music_id="52029138" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="暗恋 - pop六弦" share_url="http://music.a8.com/view/52029138" music_id="52029138"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="暗恋 - pop六弦" share_url="http://music.a8.com/view/52029138" music_id="52029138"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="暗恋 - pop六弦" share_url="http://music.a8.com/view/52029138" music_id="52029138"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="暗恋 - pop六弦" share_url="http://music.a8.com/view/52029138" music_id="52029138"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="暗恋 - pop六弦" share_url="http://music.a8.com/view/52029138" music_id="52029138"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52029138?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52028303" music_id="52028303" music_url="http://stream15.a8.com/324bfbadc3030ba7b1d102071b05fd19/584a16cb/a8space/2015/5/19/2015051906164439095.mp3" title="假装">假装 - pop六弦</a></td>
                        <td>225</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52028303" title="收藏" music_id="52028303" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="假装 - pop六弦" share_url="http://music.a8.com/view/52028303" music_id="52028303"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="假装 - pop六弦" share_url="http://music.a8.com/view/52028303" music_id="52028303"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="假装 - pop六弦" share_url="http://music.a8.com/view/52028303" music_id="52028303"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="假装 - pop六弦" share_url="http://music.a8.com/view/52028303" music_id="52028303"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="假装 - pop六弦" share_url="http://music.a8.com/view/52028303" music_id="52028303"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52028303?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52025313" music_id="52025313" music_url="http://stream15.a8.com/de436047abf5a2e21f3af36208ff20d3/584a16cb/a8space/2015/1/28/2015012821534498793.mp3" title="逆战">逆战 - pop六弦</a></td>
                        <td>508</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52025313" title="收藏" music_id="52025313" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="逆战 - pop六弦" share_url="http://music.a8.com/view/52025313" music_id="52025313"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="逆战 - pop六弦" share_url="http://music.a8.com/view/52025313" music_id="52025313"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="逆战 - pop六弦" share_url="http://music.a8.com/view/52025313" music_id="52025313"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="逆战 - pop六弦" share_url="http://music.a8.com/view/52025313" music_id="52025313"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="逆战 - pop六弦" share_url="http://music.a8.com/view/52025313" music_id="52025313"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52025313?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52024806" music_id="52024806" music_url="http://stream15.a8.com/60ce7c4269f5ad87b9c79d7539d52e55/584a16cb/a8space/2015/1/12/2015011211071746410.mp3" title="因为爱你">因为爱你 - pop六弦</a></td>
                        <td>555</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52024806" title="收藏" music_id="52024806" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="因为爱你 - pop六弦" share_url="http://music.a8.com/view/52024806" music_id="52024806"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="因为爱你 - pop六弦" share_url="http://music.a8.com/view/52024806" music_id="52024806"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="因为爱你 - pop六弦" share_url="http://music.a8.com/view/52024806" music_id="52024806"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="因为爱你 - pop六弦" share_url="http://music.a8.com/view/52024806" music_id="52024806"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="因为爱你 - pop六弦" share_url="http://music.a8.com/view/52024806" music_id="52024806"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52024806?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52024803" music_id="52024803" music_url="http://stream15.a8.com/c070517f0a1ddb299246bf3e917ea094/584a16cb/a8space/2015/1/12/2015011200380597071.mp3" title="让我取暖·">让我取暖· - pop六弦 东东</a></td>
                        <td>336</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52024803" title="收藏" music_id="52024803" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="让我取暖· - pop六弦 东东" share_url="http://music.a8.com/view/52024803" music_id="52024803"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="让我取暖· - pop六弦 东东" share_url="http://music.a8.com/view/52024803" music_id="52024803"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="让我取暖· - pop六弦 东东" share_url="http://music.a8.com/view/52024803" music_id="52024803"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="让我取暖· - pop六弦 东东" share_url="http://music.a8.com/view/52024803" music_id="52024803"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="让我取暖· - pop六弦 东东" share_url="http://music.a8.com/view/52024803" music_id="52024803"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52024803?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52024739" music_id="52024739" music_url="http://stream15.a8.com/9480e062955b35fa5cb9040ab6d265d7/584a16cb/a8space/2015/1/9/2015010911262146856.mp3" title="看你">看你 - pop六弦</a></td>
                        <td>240</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52024739" title="收藏" music_id="52024739" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="看你 - pop六弦" share_url="http://music.a8.com/view/52024739" music_id="52024739"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="看你 - pop六弦" share_url="http://music.a8.com/view/52024739" music_id="52024739"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="看你 - pop六弦" share_url="http://music.a8.com/view/52024739" music_id="52024739"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="看你 - pop六弦" share_url="http://music.a8.com/view/52024739" music_id="52024739"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="看你 - pop六弦" share_url="http://music.a8.com/view/52024739" music_id="52024739"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52024739?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52024724" music_id="52024724" music_url="http://stream15.a8.com/13745eb2a14965a8d498f7c7ae532af6/584a16cb/a8space/2015/1/8/2015010812054534790.mp3" title="人妻之歌">人妻之歌 - pop六弦</a></td>
                        <td>1478</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52024724" title="收藏" music_id="52024724" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="人妻之歌 - pop六弦" share_url="http://music.a8.com/view/52024724" music_id="52024724"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="人妻之歌 - pop六弦" share_url="http://music.a8.com/view/52024724" music_id="52024724"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="人妻之歌 - pop六弦" share_url="http://music.a8.com/view/52024724" music_id="52024724"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="人妻之歌 - pop六弦" share_url="http://music.a8.com/view/52024724" music_id="52024724"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="人妻之歌 - pop六弦" share_url="http://music.a8.com/view/52024724" music_id="52024724"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52024724?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        <tr class="play_music">
                        <td class="title"><a href="http://music.a8.com/view/52024704" music_id="52024704" music_url="http://stream15.a8.com/64a1cbca135b8d53040cc79417815167/584a16cb/a8space/2015/1/7/2015010718453250568.mp3" title="爱笑的眼睛">爱笑的眼睛 - pop六弦</a></td>
                        <td>500</td>
                        <td><span class="form_ico form_heart "><a href="http://music.a8.com/view/52024704" title="收藏" music_id="52024704" class="btn-favor" ></a></span></td>
                        <td>
                        	<span class="form_ico form_share share_trigger">
                                <div class="share_layer share_layerpos2">
                                    <div class="share_arrow"></div>
                                    <div class="share_popico icowrap_30">
                                        <a href="javascript:;" class="sf30_sina mr1 share_to_sina" title="新浪微博" share_title="爱笑的眼睛 - pop六弦" share_url="http://music.a8.com/view/52024704" music_id="52024704"></a>
                                        <a href="javascript:;" class="sf30_qzone mr1 share_to_qq" title="QQ空间"   share_title="爱笑的眼睛 - pop六弦" share_url="http://music.a8.com/view/52024704" music_id="52024704"></a>
                                        <a href="javascript:;" class="sf30_qweibo mr1 share_to_qqweibo" title="QQ微博"   share_title="爱笑的眼睛 - pop六弦" share_url="http://music.a8.com/view/52024704" music_id="52024704"></a>
                                        <a href="javascript:;" class="sf30_renren mr1 share_to_renren" title="人人网"  share_title="爱笑的眼睛 - pop六弦" share_url="http://music.a8.com/view/52024704" music_id="52024704"></a>
                                        <a href="javascript:;" class="sf30_douban share_to_douban" title="豆瓣网"  share_title="爱笑的眼睛 - pop六弦" share_url="http://music.a8.com/view/52024704" music_id="52024704"></a> 
                                    </div>
                                </div>
							</span>
                        </td>
                        <td><span class="form_ico form_compose compose_trigger"><a href="http://music.a8.com/view/52024704?tab=comment" title="" class="home_comment" target="a8_player"></a></span></td>
                    </tr>
                    
                                        
                </table>
				<div class="pb_list"></div>
            </div>
                      	<div class="tpl_title pro_title">
            	<a title="我的专辑" href="http://i.a8.com/u/1889652/album" class="pro_album"></a>
                <div class="pro_total">
                	<div class="total_wrap">
                        <a title="我的专辑" href="http://i.a8.com/u/1889652/album" class="total_title">我的专辑</a>
                        <span class="total_num">（2）</span>  
                    </div>
                                    </div>
            </div>
                      	            <div class="tpl_album fl">
            	<div class="tpl_album_left"></div>
                <div class="tpl_album_pic hover_album" onclick="location.href='http://i.a8.com/u/1889652/album/view/151510';">
                	<img src="http://co.a8-img.com/img/album/201501/12/20150112105548_f3c78ec1_m.jpg" width="220" height="220">
                    <div class="hover_item">
                    	<div class="ha_itemtitle"><a href="http://i.a8.com/u/1889652/album/view/151510" title="毕业季">毕业季</a></div>
                        <ul class="ha_iteminfo">
                        	<li class="clearfix">
                            	<span>发行时间：</span>
                                <span>2015-01-12</span>
                            </li>
                            <li class="clearfix">
                            	<span>歌手：</span>
                                <span>pop六弦</span>
                            </li>
                            <li class="clearfix">
                            	<span>风格：</span>
                                <span>流行</span>
                            </li>
                            <li class="clearfix">简介：走出校园在社会谋生 找属于我的小小空间</li>
                        </ul>
                    </div>
                </div>
                <div class="tpl_album_vdo"></div>
            </div>
                        <div class="tpl_album fr">
            	<div class="tpl_album_left"></div>
                <div class="tpl_album_pic hover_album" onclick="location.href='http://i.a8.com/u/1889652/album/view/151509';">
                	<img src="http://co.a8-img.com/img/album/201501/12/20150112103446_00f0022b_m.jpg" width="220" height="220">
                    <div class="hover_item">
                    	<div class="ha_itemtitle"><a href="http://i.a8.com/u/1889652/album/view/151509" title="在校时">在校时</a></div>
                        <ul class="ha_iteminfo">
                        	<li class="clearfix">
                            	<span>发行时间：</span>
                                <span>2009-01-28</span>
                            </li>
                            <li class="clearfix">
                            	<span>歌手：</span>
                                <span>pop六弦</span>
                            </li>
                            <li class="clearfix">
                            	<span>风格：</span>
                                <span>流行</span>
                            </li>
                            <li class="clearfix">简介：从大二在校写的曲子 纪念我的校园点滴</li>
                        </ul>
                    </div>
                </div>
                <div class="tpl_album_vdo"></div>
            </div>
                         
            <div class="clear"></div>
       	  	<div class="tpl_title pro_title">
            	<a title="我的相册" href="http://i.a8.com/u/1889652/photo" class="pro_gallery"></a>
                <div class="pro_total">
                	<div class="total_wrap">
                        <a title="我的相册" href="http://i.a8.com/u/1889652/photo" class="total_title">我的相册</a>
                        <span class="total_num">（1）</span>  
                    </div>
                                </div>
            </div>
                        <ul class="tpl_gallerys clearfix">
                        	<li><a href="http://i.a8.com/u/1889652/photo/album/360901" title="5"><img src="http://co.a8-img.com//img/photo/201501/20/20150120213130_01613fa5_t.jpg" width="165" height="165"></a></li>
                        	<li><a href="http://i.a8.com/u/1889652/photo/album/360901" title="4"><img src="http://co.a8-img.com//img/photo/201501/20/20150120213130_0876c49c_t.jpg" width="165" height="165"></a></li>
                        	<li><a href="http://i.a8.com/u/1889652/photo/album/360901" title="3"><img src="http://co.a8-img.com//img/photo/201501/20/20150120213130_ed30e473_t.jpg" width="165" height="165"></a></li>
                        	<li><a href="http://i.a8.com/u/1889652/photo/album/360901" title="2"><img src="http://co.a8-img.com//img/photo/201501/20/20150120213130_cb825370_t.jpg" width="165" height="165"></a></li>
                        	<li><a href="http://i.a8.com/u/1889652/photo/album/360901" title="1"><img src="http://co.a8-img.com//img/photo/201501/20/20150120213130_ad43a9f5_t.jpg" width="165" height="165"></a></li>
                        	<li><a href="http://i.a8.com/u/1889652/photo/album/360901" title="QQ图片20150107181303"><img src="http://co.a8-img.com//img/photo/201501/07/20150107181330_0e096b0e_t.jpg" width="165" height="165"></a></li>
                        	<li><a href="http://i.a8.com/u/1889652/photo/album/360901" title="QQ图片20150107181257"><img src="http://co.a8-img.com//img/photo/201501/07/20150107181323_239db338_t.jpg" width="165" height="165"></a></li>
                        	<li><a href="http://i.a8.com/u/1889652/photo/album/360901" title="QQ图片20150107180652"><img src="http://co.a8-img.com//img/photo/201501/07/20150107180258_d1bb6714_t.jpg" width="165" height="165"></a></li>
                        </ul>
                        <div class="tpl_title pro_title">
            	<a title="我的视频" href="http://i.a8.com/u/1889652/video" class="pro_video"></a>
                <div class="pro_total">
                	<div class="total_wrap">
                        <a title="我的视频" href="http://i.a8.com/u/1889652/video" class="total_title">我的视频</a>
                        <span class="total_num">（1）</span>  
                    </div>
                                    </div>
            </div>
                                    <div class="tpl_videobox">
            	<div class="video_play big_cover">
                	<embed src="http://player.youku.com/player.php/sid/XNjY5NTgzMzcy/v.swf" quality="high" width="700" height="440" align="middle" allowScriptAccess="always" allowFullScreen="true" mode="transparent"  wmode="opaque" type="application/x-shockwave-flash"></embed>
                    <div class="cover_ico"><a href="http://i.a8.com/u/1889652/video/view/31378" title="视频: 夜空中最亮的星翻唱"></a></div>
                </div>
                <div class="video_title"><a href="http://i.a8.com/u/1889652/video/view/31378" title="视频: 夜空中最亮的星翻唱">视频: 夜空中最亮的星翻唱</a></div>
            </div>
                        <ul class="tpl_videolist clearfix">
                                        </ul>
                    </div>
            </div>
    <div class="clear"></div>
</div>
<script type="text/javascript">
$(function(){
	 $("#back_top > a").click(function(){
		$("html, body").animate({scrollTop:"0px"},1000);
		return false
	});
})
</script>
<!-- 页脚 -->
<div id="footer">
    <div class="container clearfix">
    	<div id="back_top"><a href="javascript:;" class="button" title=""></a></div>
    	<div class="foot_service">
        	<dl>
            	<dt>网站</dt>
                <dd><a href="http://ir.a8.com/" target="_blank" title="A8集团">A8集团</a></dd>
                <dd><a href="http://help.a8.com/1/2.html" title="关于我们">关于我们</a></dd>
                <dd><a href="http://hr.a8.com" title="加入我们" target="_blank">加入我们</a></dd>
                <dd><a href="http://help.a8.com/1/4.html" title="友情链接">友情链接</a></dd>
                <dd><a href="http://v.a8.com/" title="明星握手会视频" target="_blank">明星握手会视频</a></dd>
            </dl>
            <dl>
            	<dt>服务</dt>
                <dd><a href="http://help.a8.com/2/1.html" title="版权声明">版权声明</a></dd>
                <dd><a href="http://help.a8.com/2/2.html" title="音乐人服务">音乐人服务</a></dd>
                <dd><a href="http://help.a8.com/2/3.html" title="意见反馈">意见反馈</a></dd>
                <dd><a href="http://help.a8.com/2/4.html" title="商务合作">商务合作</a></dd>
            </dl>
            <dl>
            	<dt>帮助</dt>
                <dd><a href="http://help.a8.com/3/1.html" title="用户指南">用户指南</a></dd>
                <dd><a href="http://help.a8.com/3/2.html" title="功能简介">功能简介</a></dd>
            </dl>
            <dl style="height:auto;">
            	<dt>特色功能</dt>
                <dd><a href="http://help.a8.com/4/1.html" title="A8采集器">A8采集器</a></dd>
                <dd><a href="http://help.a8.com/4/2.html" title="电子名片">电子名片</a></dd>
                <dd style="height:auto;"><a href="http://cp.a8.com/" title="数字音乐020版权服务与管理应用平台">数字音乐020版权服务与管理应用平台</a></dd>
				<dd style="height:auto;"><a href="http://www.bjwzb.gov.cn" target="_blank" title="北京市国有文化资产监督管理办公室">北京市国有文化资产监督管理办公室</a></dd>
            </dl>
        </div>
        <div class="foot_extend">
       	  	<h4>A8新媒体集团</h4>
            <ul>
            	<li><a href="http://www.a8nmg.com/" title="a8新媒体集团" target="_blank"><img src="http://main.a8-img.com/static/web/images/web_insert/footer/a8.gif" width="60" height="60"></a></li>
            	<li><a href="http://www.duomi.com/" title="多米音乐" target="_blank"><img src="http://main.a8-img.com/static/web/images/web_insert/footer/footer_001.gif" width="60" height="60"></a></li>
                <li><a href="http://www.3333.cn/" title="指游方寸 " target="_blank"><img src="http://main.a8-img.com/static/web/images/web_insert/footer/zhiyou.gif" width="60" height="60"></a></li>
                <li><a href="javascript:;" title="A8 LIVE HOUSE " ><img src="http://main.a8-img.com/static/web/images/web_insert/footer/a8live.gif" width="60" height="60"></a></li>
                <li><a href="http://meelive.cn/" title="蜜live " target="_blank"><img src="http://main.a8-img.com/static/web/images/web_insert/footer/meelive.gif" width="60" height="60"></a></li>
                <li><a href="http://www.demolive.net/" title="德木现场 " target="_blank"><img src="http://main.a8-img.com/static/web/images/web_insert/footer/demu.gif" width="60" height="60"></a></li>
                <li><a href="http://www.qingsongfund.com/" title="青松基金 " target="_blank"><img src="http://main.a8-img.com/static/web/images/web_insert/footer/qingsong.gif" width="60" height="60"></a></li>
            </ul>
        </div>
	</div>
    <div class="copyright">
    	<div class="container clearfix">
        	<span class="fl">Copyright 2004-2016 A8.COM All rights reserved.</span>  
            <span class="fr">
            	<b><a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备13012456号-5</a></b>
                <b><a href="http://182.131.21.137/ccnt-apply/admin/business/preview/business-preview!lookRFID.action?main_id=CE5473F027FE4348B40EC5B2179DDD15" target="_blank"><img src="http://main.a8-img.com/static/web/images/web_insert/footer/gameRFID5050.png" width="30" height="30" />&nbsp;粤网文[2011]0391-058号</a></b>
                <b><a href="http://main.a8-img.com/static/2011/images/web/a8-dxxk.jpg?v=2015" target="_blank">增值业务许可证B2-20090206</a></b>
                <b><a href="http://main.a8-img.com/static/2011/images/web/stxk.jpg?v=2016" target="_blank">网络视听许可证1909352号</a></b>
            </span>			
        </div>		
    </div>
	<div class="gongshangbar">	
		<div style="width:300px;margin:0 auto; padding:20px 0;">
			<p style="height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">			
			<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44030502000397" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
			<img src="http://main.a8-img.com/static/web/images/web_insert/baico.png" width="20" height="20" align="absmiddle">粤公网安备 44030502000397号</a>
			&nbsp;&nbsp;
			<script id="ebsgovicon" src="http://szcert.ebs.org.cn/govicon.js?id=c87305ce-aeb5-47b9-9422-c0126b9c0f33&width=24&height=33&type=1" type="text/javascript" charset="utf-8"></script>
			</p>
			<div style="clear:both;"></div>
			
		</div>
        
	</div>	
</div>

<!--[if lte IE 9]>
    <script src="http://main.a8-img.com/static/web/js/ltie/js/html5.min.js"></script>   
<![endif]-->
  
<!--[if IE 6]>
		<script type="text/javascript" src="http://main.a8-img.com/static/web/js/ltie/js/DD_belatedPNG.js"></script>
		<script type="text/javascript">
			DD_belatedPNG.fix('div, ul, img, li, input , a, .png_bg'); 
	  	</script>
 <![endif]-->
 <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cdiv id='cnzz_stat_icon_30061279'%3E%3C/div%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30061279' type='text/javascript'%3E%3C/script%3E"));</script>
<div style="display:none"></div>
</body>
</html>