function getIssues(){
		
		var issuesHTML = "<ul class='forum-list'>";
		
		$.get("https://api.github.com/repos/OHI-Science/ohi-science.github.io/issues", function(data){
			
			var numSess = data.length,
				session;
			
			for(var i=0; i<numSess; i++){
				session = data[i];
				issuesHTML += "<li class='posts-title'><span><a href='" + session.html_url + "'>" + session.title + "</a>";
				
				var labels = session.labels.length;
				for(var x=0; x<labels; x++){
					issuesHTML += "<span class='label label-info' style='background-color:#" + session.labels[x].color + "'><a href='https://github.com/NCEAS/open-science-codefest/labels/" + session.labels[x].name + "'>" + session.labels[x].name + "</a></span>";
				}
				
				issuesHTML += "<span class='user subtle'> Posted by <a href='" + session.user.html_url + "'>" + session.user.login + "</a></span>";
	
				issuesHTML += "</span><a class='btn' href='" + session.html_url + "'>View or Reply <i class='icon icon-right lnr lnr-arrow-right-circle'></i></a>";
	
				issuesHTML += "<div class='clear'></div></li>";
			}
			
			issuesHTML += "</ul>";
						
			$('#github-issues').html(issuesHTML);
		});
	

	}
	
	$(document).ready(getIssues);
	
	
	
