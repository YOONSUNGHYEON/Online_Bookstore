$(document).ready(function(){
    $(".mv ul").bxSlider({
        pager: false,
        controls: false,
        auto: true,
        mode: 'fade'})
    
    $(".header_bot li").mouseover(function(){
        $(".hb_sub").stop().slideDown(300)
        $(".h_sub_bg").stop().slideDown(300)})
    
    $(".header_bot li").mouseout(function(){
        $(".hb_sub").stop().slideUp(300)
        $(".h_sub_bg").stop().slideUp(300)})
    
     $(window).scroll(function(){
            var sct = $(window).scrollTop()
            if (sct>=500){
                $("#top_btn").fadeIn(300)
            }else
                $("#top_btn").fadeOut(300)})
        
        
        $("#top_btn a").click(function(){
            $("html, body").animate({scrollTop:"0"},300)
            return false})
    
    $(".banner_close").click(function(){
        $("#event_banner").css("display","none")
        return false
    })
})