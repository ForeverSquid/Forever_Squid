/**
 * Created by Ryan on 2017/4/18.
 */
$(function(){
    $(".mid-nav span").on("click",function(){
        $(this).addClass('selected').siblings().removeClass('selected')
        $(".right-con div").eq($(this).index()).addClass("firstP").siblings().removeClass("firstP")
    });
})