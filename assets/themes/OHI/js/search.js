$(document).ready(function(){
  // Initalize lunr with the fields it will be searching on. I've given title
  // a boost of 10 to indicate matches on this field are more important.
  window.idx = lunr(function () {
    this.field('id');
    this.field('title', { boost: 10 });
    this.field('category');
    this.field('description');
    this.field('excerpt');
    this.field('search-terms', { boost: 11 });
  });
  
  window.appSearchQuery = "";

  // Download the data from the JSON file we generated
  window.searchData = $.getJSON('/assets/themes/OHI/js/search-data.json');

  // Wait for the data to load and add it to lunr
  window.searchData.then(function(loaded_data){
    
	$.each(loaded_data, function(index, value){
      window.idx.add(
        $.extend({ "id": index }, value)
      );
    });
    
	  if((window.location.pathname.indexOf("search.html") > -1) && (window.location.search.length > 0)){
		  var query = window.location.search.substring(window.location.search.indexOf("?q=") + "?q=".length)
		  submit_search(null, query);
	  }
	  
  });
  
  // Event when the form is submitted
  $("#site_search").submit(submit_search);
  
  function submit_search(e, query){
      if(e) e.preventDefault();
      
      if(window.location.pathname.indexOf("search.html") < 0){
    	  window.location = "/search.html?q=" + encodeURIComponent($("#search_box").val());
    	  return;
      }
      
      if((typeof query == "undefined") || !query){
    	  var query = $("#search_box").val(); // Get the value for the text field
    	  window.location.search = "?q=" + encodeURIComponent(query);
    	  return;
      }
      
      appSearchQuery = decodeURIComponent(query);
      
      var results = window.idx.search(appSearchQuery); // Get lunr to perform a search
      display_search_results(results); // Hand the results off to be displayed
  }
  
  function display_search_results(results) {
    var $search_results = $("#search_results");

    // Wait for data to load
    window.searchData.then(function(loaded_data) {

      // Are there any results?
      if (results.length) {
        $search_results.empty(); // Clear any old results

        $search_results.append("<h3>" + results.length + " pages found for: " + appSearchQuery + "</h3>");
        
        // Iterate over the results
        results.forEach(function(result) {
          var item = loaded_data[result.ref];
          
          if(!item.title || !item.title.length) return;

          // Build a snippet of HTML for this result
          var appendString = '<li class="search-result"><a href="' + item.url + '">' + item.title;
          if(item.category)
        	  appendString += ' (' + item.category + ')';
          
          appendString += '</a>';
          
          if(item.excerpt)
        	  appendString += '<p class="description">' + item.excerpt + '</p>';
          
          appendString += '</li>';

          // Add it to the results
          $search_results.append(appendString);
        });
      } else {
        $search_results.html('<li>No results found for: ' + appSearchQuery + '</li>');
      }
    });
  }
});