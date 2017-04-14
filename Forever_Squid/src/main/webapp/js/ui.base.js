/*****
* @description	:注册登录
* @author	:陈敏
* @version	:1.0
* @version		:master
* @update	:chenmin(2013-06-06 06:06)
*****/
/*滚动定位*/
jQuery(function(){
	$('#back_top > a').click(function(){
		$('html,body').animate({scrollTop: '0px'}, 1000);
	}); 
	$('#ct').click(function(){
		$('html,body').animate({scrollTop:$('#comments').offset().top}, 800);
	});
	$('#fall').click(function(){
		$('html,body').animate({scrollTop:$('#footer').offset().top}, 800);
	});
})
/*--文本框字数300限制--*/
jQuery.fn.characterLimit=function(options){
	var defaults={
		obj_opts:"textarea",
		obj_Maxnum:600,
		obj_Lnum:".sns-num"
	}
	var opts=$.extend(defaults,options);
	return this.each(function(){
		var _this=$(this).find(opts.obj_opts);
		var num=parseInt(opts.obj_Maxnum/2);
		var _obj_Lnum=$(this).find(opts.obj_Lnum);
		$(_obj_Lnum).find("em").text(num);
		if(_this.val()!=""){
			var len= _this.val().replace(/[^\x00-\xff]/g, "**").length;
			var _num=parseInt(len/2);
			html="<span>"+_num+"</span>"+"/300";
			$(_obj_Lnum).html(html);
		}
		_this.focus(function(){
			var html;
			$(this).keyup(function(){
				//键盘输入
				var lend= $(this).val().replace(/[^\x00-\xff]/g, "**").length;
				// alert(len);
				var _num=parseInt(lend/2);
				html="<span>"+_num+"</span>"+"/300";
				$(_obj_Lnum).html(html);
				if(lend>opts.obj_Maxnum){
					html="已经超出"+"<span>"+(+_num-num)+"</span>"+"字";
					$(_obj_Lnum).html(html);
					$(_obj_Lnum).find("span").css("color","#C30");									
				}
				else{					
					$(_obj_Lnum).find("span").removeAttr("style");
				}
			});
		});
		
	});
};
/*--表单变色--*/
jQuery(function(){
	jQuery("table tr:gt(0)").hover(function(){
		jQuery(this).css("background","#f7f7f7");
	  },function(){
		jQuery(this).css("background","");
	  });
});
jQuery(function(){
	jQuery(".so_result_content li:gt(0)").hover(function(){
		jQuery(this).css("background","#f7f7f7");
	  },function(){
		jQuery(this).css("background","");
	  });
});

/*--邮箱自动提醒--*/
(function($){
	$.fn.auto_remind_mail = function(options){
		var opts = $.extend({}, $.fn.auto_remind_mail.defaults, options);
		return this.each(function(){
			var $this = $(this);
			var o = $.meta ? $.extend({}, opts, $this.data()) : opts;
			var top = $this.offset().top + $this.height() + 2;
			var left = $this.offset().left;
			var $mailBox = $('<div class="auto_remind_mail" style="top:'+top+'px;left:'+left+'px;width:'+$this.width()+'px"></div>');
			$('body').append($mailBox);

			function setEmailLi(index){
				$('.auto_remind_mail li').removeClass('current').eq(index).addClass('current');
			}
			var emails = o.emails;
			var init = function(input){
				input.attr('autocomplete','off');
				if(input.val()!=""){
					var emailList = '<p>请选择邮箱类型</p><ul>';
					for(var i = 0; i < emails.length; i++) {
						emailList += '<li>'+input.val()+'@'+emails[i]+'</li>';
					}
					emailList += '</ul>';
					$mailBox.html(emailList).show(0);
				}else{
					$mailBox.hide(0);
				}
				$('.auto_remind_mail li').hover(function(){
					$('.auto_remind_mail li').removeClass('current');
					$(this).addClass('current');
				},function(){
					$(this).removeClass('current');
				}).click(function(){
					input.val($(this).html());
					$mailBox.hide(0);
				});
			}
			var eindex = -1;
			$this.focus(function(){
				if($this.val().indexOf('@') == -1){
					init($this);
				}else{
					$mailBox.hide(0);
				}
			}).blur(function(){
				setTimeout(function(){
					$mailBox.hide(0);
				},1000);//
			}).keyup(function(event){
				if($this.val().indexOf('@') == -1){
					if(event.keyCode == 40){
						eindex ++;
						if(eindex >= $('.auto_remind_mail li').length){
							eindex = 0;
						}
						setEmailLi(eindex);
					}else if(event.keyCode == 38){
						eindex --;
						if(eindex < 0){
							eindex = $('.auto_remind_mail li').length-1;
						}
						setEmailLi(eindex);
					}else if(event.keyCode == 13){
						if(eindex >= 0){
							$this.val($('.auto_remind_mail li').eq(eindex).html());
							$mailBox.hide(0);
						}
					}else{
						eindex = -1;
						init($this);
					}
				}else{
					$mailBox.hide(0);
				}
			}).keydown(function(event){
				if(event.keyCode == 13){
					return false;
				}
			});
		});
	};
	$.fn.auto_remind_mail.defaults = {emails:[]};
})(jQuery);
/*粉丝关注按钮*/
$(function(){
	var relation_moveheight = 20,
		  relation_movetime = 200,
		  relation_curmove = null;
	$('.relation_animate').hover(function (e){
		var curLi = $(this);
		curMove = setTimeout(function (){
			curLi.children('div.relation_status').animate({ top: '-' + relation_moveheight + 'px' }, relation_movetime);
			curLi.children('div.relation_del').animate({ top: '0px' }, relation_movetime);
		}, 0);
	},function(e){
		clearTimeout(relation_curmove);
		$(this).children('div.relation_status').animate({ top: '0px' }, relation_movetime);
		$(this).children('div.relation_del').animate({ top: relation_moveheight + 'px' }, relation_movetime);
	});
});
/*粉丝关注按钮*/
jQuery(function(){
	jQuery("table tr").hover(function(){
		jQuery(this).css("background","#f7f7f7");
	  },function(){
		jQuery(this).css("background","");
	  });
});
/*
  * 随滚动条固定导航到顶部插件
*/
;(function($) {
  jQuery.fn.scroll_fixed = function(height, dir) {
    height = height || 0;
    height = height == "top" ? 0 : height;
    return this.each(function() {
      if (height == "bottom") {
        height = document.documentElement.clientHeight - this.scrollHeight;
      } else if (height < 0) {
        height = document.documentElement.clientHeight - this.scrollHeight + height;
      }
      var that = $(this),
        oldHeight = false,
        p, r, l = that.offset().left;
      dir = dir == "bottom" ? dir : "top"; //默认滚动方向向下
      if (window.XMLHttpRequest) { //非ie6用fixed


        function getHeight() { //>=0表示上面的滚动高度大于等于目标高度
          return (document.documentElement.scrollTop || document.body.scrollTop) + height - that.offset().top;
        }
        $(window).scroll(function() {
          if (oldHeight === false) {
            if ((getHeight() >= 0 && dir == "top") || (getHeight() <= 0 && dir == "bottom")) {
              oldHeight = that.offset().top - height;
              that.css({
                position: "fixed",
                top: height
              });
            }
          } else {
            if (dir == "top" && (document.documentElement.scrollTop || document.body.scrollTop) < oldHeight) {
              that.css({
                position: "static"
              });
              oldHeight = false;
            } else if (dir == "bottom" && (document.documentElement.scrollTop || document.body.scrollTop) > oldHeight) {
              that.css({
                position: "static"
              });
              oldHeight = false;
            }
          }
        });
      } else { //for ie6
        $(window).scroll(function() {
          if (oldHeight === false) { //恢复前只执行一次，减少reflow
            if ((getHeight() >= 0 && dir == "top") || (getHeight() <= 0 && dir == "bottom")) {
              oldHeight = that.offset().top - height;
              r = document.createElement("span");
              p = that[0].parentNode;
              p.replaceChild(r, that[0]);
              document.body.appendChild(that[0]);
              that[0].style.position = "absolute";
            }
          } else if ((dir == "top" && (document.documentElement.scrollTop || document.body.scrollTop) < oldHeight) || (dir == "bottom" && (document.documentElement.scrollTop || document.body.scrollTop) > oldHeight)) { //结束
            that[0].style.position = "static";
            p.replaceChild(that[0], r);
            r = null;
            oldHeight = false;
          } else { //滚动
            that.css({
              top: height + document.documentElement.scrollTop
            })
          }
        });
      }
    });
  };
})(jQuery);

$(function(){
	//$(window).resize(function(){
		$("#tpl_nav").scroll_fixed(40,"top");$("#tpl_leftnav").scroll_fixed(40);
	//});
	
});
/*--------帮助菜单-------*/
$(function(){
	//$("#help_menu .sub:eq(0)").show();
	$("#help_menu p.main").click(function(){
		$(this).addClass("current").next("div.sub").slideToggle(300).siblings("div.sub").slideUp("slow");
		$(this).siblings().removeClass("current");
	});
	//help content
	$(".help_content .help_items:eq(0) .help_info").show();
	
	$(".help_content h2.title").click(function(){
		$(this).next("div.help_info").slideToggle(300);
		$(this).toggleClass("current");
	});
});
