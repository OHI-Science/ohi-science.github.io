/* A simple responsive menu */

$(document).ready(function(){    
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
});