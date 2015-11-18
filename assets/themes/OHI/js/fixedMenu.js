// Sets a max height CSS property on the Table of Contents (#TOC) in manual layout pages
function setMaxHeight(){
	var height = $(window).outerHeight(true) - $(".topbar").outerHeight(true);
	
	$("#TOC").css("max-height", height);
}

//Will listen for scrolling and highlight the corresponding menu item in the TOC (#TOC)
function listenScroll(){
    var sectionHts = [],
    	sections =  $(".section[id]");
   
    $(sections).each(function(){
    	sectionHts.push($(this).position().top);
    });
    
    var middle = sectionHts.length / 2;
    
	$(document).scroll(function() {
	    var scrollTop = $(document).scrollTop() + 100,
	    	start = scrollTop >= sectionHts[middle] ? middle : 0;
	    	
	    for(var i=start; i < sectionHts.length; i++){
	    	if((scrollTop >= sectionHts[i]) && (scrollTop <= sectionHts[i+1])){
	    		highlightTOC($(sections[i]).attr("id"));
	    		break;
	    	}
	    }
	});
	
	$("#TOC a").click(function(){
		highlightTOC($(this).attr('href').replace("#", ""));
		
	});
	
	function highlightTOC(sectionID){
		$("#TOC a").removeClass("active");
		$("#TOC [href='#" + sectionID + "']").addClass("active");
	}
}
	
$(document).ready(function(){
	setMaxHeight();
	$(window).resize(setMaxHeight);
	listenScroll();
});
	
	
	
