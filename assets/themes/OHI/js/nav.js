/* A simple responsive menu */

$(document).ready(function(){    
	//***Mobile menu***
    $("#nav-trigger").click(function(){
    	//On close
        if ($("#nav-main").hasClass("expanded")) {
            $("#nav-main.expanded").removeClass("expanded").slideUp();
            $("#nav-trigger .collapse").hide();
            $("#nav-trigger .expand").show();
            $(this).removeClass("open");
        }
        //On open
        else {
            $("#nav-main").addClass("expanded").slideDown();
            $("#nav-trigger .expand").hide();
            $("#nav-trigger .collapse").show();
            $(this).addClass("open");
        }
    });
    
    //***Dropdown menu***
    var topBarStartingHeight = $(".topbar").outerHeight();    
    //Show the selected sub-navigation menu on hover
    $(".nav > li a").mouseover(function(e){
    	var link = e.target,
    		subnav = $(link).parent().children(".sub-nav");
    	
    	if(subnav.length > 0){
    		var height = subnav.length * 40 + topBarStartingHeight;
        	$(".topbar").animate({ height: "200px" }, 100);
        	
        	$(".topbar .sub-nav").slideUp();
        	subnav.slideDown();
    	}
    	
    });    
    $(".topbar").on("mouseleave", function(e){
    	$(".topbar .sub-nav").slideUp();
    	$(".topbar").animate({ height: topBarStartingHeight }, 100);
    });
    
    //*** Search icon ****
    $(".topbar .icon.search").on("mouseover", function(e){
    	e.preventDefault();
    	var icon = $(".topbar .icon.search");
    	
    	$(icon).parent("form").find(".hidden-input").toggle(300);
    	
    });
    
});

//*** Anchor tag offset for fixed menu ***
var anchorOffset = function(force){
	if((window.location.hash && !$("body").is(".manual")) || (force && !force.target)){
		var offset = $(".topbar").length? $(".topbar").outerHeight() + 20 : 100;
		
		$(window).scrollTop($(window.location.hash).offset().top - offset);
	}
}
$(window).load(anchorOffset);