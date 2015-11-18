// Sets a max height CSS property on the Table of Contents (#TOC) in manual layout pages
function setMaxHeight(){
	var height = $(window).outerHeight(true) - $(".topbar").outerHeight(true);
	
	$("#TOC").css("max-height", height);
}
	
$(document).ready(setMaxHeight);
	
	
	
