$(document).ready(function(){

	var phaseColors = {
		learn: "#75cede",
		plan: "#2897a5",
		conduct: "#2a7ea5",
		inform: "#2a58a5"
	}
	
	var startingHTML = $("#summary-container").html();
	
	$(".arc-container *").on("mouseover", function(e){
		var node = e.target,
			container;
		
		if($(node).attr("class").indexOf("arc-container") < 0){
			container = $(node).parents(".arc-container");
		}
		else{
			container = $(node);
		}
		
		var path = $(container).find(".arc");
		var phase = $(container).attr("phase");
		var summary = $(".summary." + phase).html();
			
		$("#summary-container .summary").html(summary).attr("phase", phase);
		
		//Make the other arcs look unselected		
		$(".arc-container .arc").attr("fill", "#697484").attr("stroke", "0px");
		$(path).attr("fill", phaseColors[phase]).attr("stroke", "3px");
	});

	$("svg .reset").on("mouseover", function(e){
		//Reset the graphic
		$("#summary-container").html(startingHTML).attr("phase", "");
		$(".arc-container").each(function(i, arc){
			var phase = $(arc).attr("phase");
			var path = $(arc).find(".arc");
			path.first().attr("fill", phaseColors[phase]);
		});
	});
	     
});