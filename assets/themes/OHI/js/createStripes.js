function createStripes(){
	var headers = $(".stripes-container > h2"),
		stripe = $(document.createElement("section")).addClass("stripe");
	
	headers.each(function(i){	
		var content = $(this).nextUntil("h2").not(".diagonal-container").not(".stripe");
				
		var allContent =  content.add(this);
		allContent.wrapAll(stripe.clone().addClass("stripe-" + i));
		
	});
}

$(document).ready(createStripes);