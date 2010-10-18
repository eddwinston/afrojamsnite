$(document).ready(function(){
    
    animateEventInfo();
    
    initialiseSlideShow();
    
});

function animateEventInfo() {
    setInterval(function(){
        // Selecting only the visible layers:
        var versions = $('.textVersion:visible');
        if(versions.length<2){
            // If only one layer is visible, show the other
            $('.textVersion').fadeIn(800);
        }
        else{
            // Hide the upper layer
            versions.eq(0).fadeOut(800);
        }
    }, 1000);
}

function initialiseSlideShow() {
    $("#slideShow").easySlider({
        auto: true,
		continuous: true, 
		controlsShow: false
    });
}