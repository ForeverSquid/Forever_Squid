//兼容函数   
function mouseWheel(obj,upfun,downfun){
        if(obj.addEventListener){
            obj.addEventListener("mousewheel",fn);
            obj.addEventListener("DOMMouseScroll",fn)
        }else{
            obj.attachEvent("onmousewheel",fn);
        }
        function fn(e){
            var ev=e||window.event;
            //鼠标滚轮滚动的方向
            //火狐 ev.detail  向上-3  向下3
            //IE chrome      ev.wheelDelta  向上120 向下-120
            var val=ev.detail||ev.wheelDelta;
            if(val==-3||val==120){
                upfun();
            }else if(val==3||val==-120){
                downfun();
            }
            if(ev.preventDefault){
                ev.preventDefault();
            }else{
                ev.returnValue=false;
            }
        }
    }
