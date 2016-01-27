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
    var topBarStartingHeight = $(".topbar").outerHeight(),
    	slideDownInProgress = false;    
    
    //Show the selected sub-navigation menu on hover
    $(".nav > li a").mouseover(function(e){    	
    	console.log("link mouseover");
    	var link = e.target,
    		subnav = $(link).parent().children(".sub-nav");
    	
    	if(subnav.length > 0){
    		if(subnav.is(":visible")) return;
    		
    		slideDownInProgress = true;
    		
    		var height = subnav.length * 40 + topBarStartingHeight;
    		
        	$(".topbar").animate({ height: "230px" }, {
        		duration: 100,
        		complete: function(){
        			slideDownInProgress = false;
        		}
        	});
        	
        	
        	$(".topbar .sub-nav").hide();
        	subnav.slideDown();
    	}
    	
    });    
    $(".topbar").on("mouseleave", function(e){
    	if(slideDownInProgress) return;
    	
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