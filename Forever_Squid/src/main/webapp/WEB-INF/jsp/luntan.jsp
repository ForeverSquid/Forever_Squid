<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<style>
* {
	padding: 0;
	margin: 0;
	border: 0;
}

.out {
	width: 75%;
	height: 600px;
	margin: 20px auto;
	background: #d1d9e0;
	overflow: hidden;
	position: relative;
}

.inner {
	width: 80%;
	height: auto;
	margin: 0px auto;
}

.inner:after {
	content: "";
	display: block;
	clear: both;
}

.box {
	width: 100%;
	height: 100px;
	text-align: left;
	line-height: 200px;
}

.scrollbar {
	width: 10px;
	height: 600px;
	background: #66513B;
	position: absolute;
	right: 0;
	top: 0;
}

.scrollbtn {
	width: 100%;
	height: 50px;
	background: #BCA68E;
	border-radius: 20px;
	position: absolute;
}
</style>
<body>
	<h1 align="center" style="color:red">以下div是论坛贴吧区↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓</h1>
	<h1 align="center" style="color:red">此处添加板块介绍之类的话</h1>
	<div class="out">
		<div class="inner"><br/><br/>
			<div class="box">
				字字字字字字字字字字字字字字字
				字字字
			</div>
			<div class="box">2</div>
			<div class="box">3</div>
			<div class="box">4</div>
			<div class="box">4</div>
			<div class="box">4</div>
			<div class="box">4</div>
			<div class="box">4</div>
			<div class="box">4</div>
			<div class="box">4</div>
			<div class="box">4</div>
		</div>
		<div class="scrollbar">
			<div class="scrollbtn"></div>
		</div>
	</div>
</body>
<!--1. 确定比例-->
<!--2. 确定 scrollbtn高度-->
<!--1. 拖拽-->
<!--2. 鼠标滚轮-->
<script src="<%=request.getContextPath() %>/js/gdt.js"></script>
<script>
    var out=document.querySelector(".out")
    var inner=document.querySelector(".inner")
    var scrollbtn=document.querySelector(".scrollbtn")
    var scrollbar=document.querySelector(".scrollbar")
    var innerH=inner.offsetHeight;
    var outH=out.offsetHeight;
    var scrollbarH=scrollbar.offsetHeight;
    var bili=innerH/outH;
    var tops=0;
    var speed=20;
    // if(bili<1){
    //     scrollbtn.style.display="none";
    // }
    var scrollbtnH=scrollbarH/bili;
    scrollbtn.style.height=scrollbtnH+"px";
    var lenH=scrollbarH-scrollbtnH;
    if(bili<1){
        scrollbar.style.display="none";
    }else{
        scrollbtn.onclick=function (e) {
            var ev=e||window.event;
            if(scrollbtn.stopPropagation){
                ev.stopPropagation();
            }else{
                ev.cancelBubble();
            }
        }
        scrollbtn.onmousedown = function (e) {
            var ev=e||window.event;
            var lenY=ev.clientY-this.offsetTop;
            if(ev.preventDefault){
                ev.preventDefault()
            }else{
                ev.returnValue=false;
            }
            document.onmousemove = function (e) {
                var ev = e || window.event;
                tops = ev.clientY - lenY;
                if(tops<0){
                    tops=0;
                }
                if(tops>lenH){
                    tops=lenH;
                }
                scrollbtn.style.top = tops + "px";
                var innerT=tops*bili;
                inner.style.marginTop=-innerT+"px";
            }
            document.onmouseup = function () {
                document.onmousemove = null;
                document.onmouseup = null;
            }
        }
        mouseWheel(out,function(){
            tops-=speed;
            setTop()
        },function(){
            tops+=speed;
            setTop()
        })
        scrollbar.onclick=function (e) {
            var ev=e||window.event;
            tops=ev.offsetY;
            setTop()
        }
        document.onkeydown=function (e) {
            var ev=e||event;
            if(ev.keyCode==38){
                tops-=speed;
                setTop()
            }else if(ev.keyCode==40){
                tops+=speed;
                setTop()
            }
        }
        function setTop(){
            if(tops<0){
                tops=0;
            }
            if(tops>=lenH){
                tops=lenH;
            }
            scrollbtn.style.top=tops+"px";
            inner.style.marginTop=-tops*bili+"px";
        }
    }


</script>
</html>