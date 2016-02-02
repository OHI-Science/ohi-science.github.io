// Sets a max height CSS property on the Table of Contents (#TOC) in manual layout pages
function setMaxHeight(){
	var height = $(window).outerHeight(true) - $(".topbar").outerHeight(true);
	
	$("#TOC").css("max-height", height);
	$(".fixed-side-nav").css("height", height);
}

//Will listen for scrolling and highlight the corresponding menu item in the TOC (#TOC)
function listenForScroll(){
    var navHeight = $(".topbar").length ? $(".topbar").outerHeight() : 0, //Start cumulative height at the navbar height
    	sections =  $(".section[id]").not(".level4");
    
	$(document).scroll(function() {
		var scrollTop = $(window).scrollTop() + navHeight,
			found = false;
		
		$(sections).each(function(i){ 
			if(found) return;
			
			var sectionHeader = $(this).children("h1, h2, h3"),
				nextSectionHeader = $(sections[i+1]).children("h1, h2, h3"),
				top = sectionHeader.length ? sectionHeader.offset().top : 99999999,
				nextTop = nextSectionHeader.length ? nextSectionHeader.offset().top : 9999999;
			
			if((scrollTop >= top) && (scrollTop <= nextTop)){
				highlightTOC( $(this).attr("id") );
				found = true;
			}
						
		});
	});
	
	$("#TOC a").click(function(){
		highlightTOC($(this).attr('href').replace("#", ""));
		
	});
}

function highlightTOC(sectionID){
	var highlightThis = $("#TOC [href='#" + sectionID + "']");
	if(!highlightThis.length) return;
	
	$("#TOC a").removeClass("active");
	highlightThis.addClass("active");
}
	
$(document).ready(function(){
	if($("body").is(".fixed-side-nav-page")){
		setMaxHeight();
		$(window).resize(setMaxHeight);
		listenForScroll();		
		highlightTOC(window.location.hash.replace("#", ""));
	}
});
	
	
	
