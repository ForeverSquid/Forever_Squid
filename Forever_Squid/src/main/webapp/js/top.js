$(function(){
    //轮播图
    var x = ($("#pic").width()-960)/2;
    var left = -(960-x);
    var $index = 0;
    $("#pic").on("mouseover",function(){
        $("#pic-btn").show();
    }).on("mouseout",function(){
        $("#pic-btn").hide();
    });
    $("#pic-content").css('left',left);
    $("#pic-left").css("width",x);
    $("#pic-right").css("width",x);
    $(".prev").css("left",x).on("click",function(){
        $index -=1;
        if($index == -1) {
            $index = 4;
        }
        $("#pic-content").stop().animate({
            left:left-960*$index
        },1000);
    });
    $(".next").css("right",x).on("click",function(){
        $index +=1;
        if($index == 5) {
            $index = 0;
        }
        $("#pic-content").stop().animate({
            left:left-960*$index
        },1000);
    });
    $("#pic li").on("click",function(){
        $index = $(this).index();
        $("#pic-content").stop().animate({
            left:left-960*$index
        },1000);
    });
    //播放器
    var myAudio = $("#shen")[0];
    $("#play-pause").on("click",function(){
        if (myAudio.paused) {
            play()
        } else {
            pause()
        }
    });
    $("#small-music span").on("click",function(){
        var index = $(this).parent().parent().index()+1;
        var url = 'mp3/'+index+'.mp3';
        if (myAudio.paused) {
            $("#shen").attr("src",url);
            myAudio.play();
            $(this).removeClass().addClass('pause');
        } else {
            myAudio.pause();
            $(this).removeClass().addClass('play');
        }
    });
    function play(){
        myAudio.play();
        $("#play-pause").removeClass().addClass('pause');
    }
    function pause(){
        myAudio.pause();
        $('#play-pause').removeClass().addClass('play');
    }
    for(var i=0;i<6;i++){
        var src = "t"+i;
        $(".con").eq(i).children('div').css({
            "background":'url(img/'+src+'.jpg) no-repeat',
            'background-size':'80px 80px'
        })
    }
});
