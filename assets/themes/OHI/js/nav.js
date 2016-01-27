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
    	var link = e.target,
    		subnav = $(link).parent().children(".sub-nav");
    	
    	//If there is a submenu for this item, display it
    	if(subnav.length > 0){
    		//If it's already visible, don't do anything
    		if(subnav.is(":visible")) return;
    		
    		//Mark that the topbar is currently being shown (the animation will take a bit)
    		slideDownInProgress = true;
    		
    		//The new height
    		var height = subnav.length * 40 + topBarStartingHeight;
    		
    		//Show the topbar now
        	$(".topbar").animate({ height: "230px" }, {
        		duration: 100,
        		complete: function(){
        			//When hte animation is complete, mark so
        			slideDownInProgress = false;
        		}
        	});
        	
        	//Hide all the submenus first
        	$(".topbar .sub-nav").hide();
        	//Then show only the submenu we want
        	subnav.slideDown();
    	}
    	
    });    
    
    //When the users mouse leaves the topbar, hide it
    $(".topbar").on("mouseleave", function(e){
    	//If the nav bar is still in the animation process of displaying
    	if(slideDownInProgress){
    		
    		//We want to set a timeout of 2 seconds so we can check if the user really meant to leave the navbar or not
    		var navTimeout = setTimeout(function(){
    			//If the user is not hovering over the topbar...
    			if( !$(".topbar").is(":hover") ){
    				//Hide the navbar
    				$(".topbar").trigger("mouseleave");
    				//Don't check again
    				clearTimeout($(".topbar").data("timeoutId"));
    			}
    		}, 2000);
    		$(".topbar").data("timeoutId", navTimeout);
    		
    		//Until then, don't do anything
    		return;
    	}
    	
    	//Hide all the navigation items
    	$(".topbar .sub-nav").slideUp();
    	
    	//Show the topbar
    	$(".topbar").animate({ height: topBarStartingHeight }, 100);
    });
    
    //*** Search icon ****
    $(".topbar .icon.search").on("mouseover", function(e){
    	e.preventDefault();
    	var icon = $(".topbar .icon.search");
    	
    	$(icon).parent("form").find(".hidden-input").toggle(300);
    	
    });
    
});