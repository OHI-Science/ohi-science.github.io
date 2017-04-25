---
layout: default
title: OHI Assessments
description: A list of OHI assessments
comments: false
group: navigation
---
{% include JB/setup %}

<div class="stripe display primary-color map">
	<h1>OHI Assessments</h1>
	<p>
		Here you will find a list of current and completed Ocean Health Index assessments. The OHI team provides technical guidance and support for OHI+ assessments, but OHI+ groups are fully responsible for all decisions made and the resulting scores.  
		The map below illustrate ongoing and completed assessments. Shading indicates areas that have completed assessments (light teal) or are <a href="http://ohi-science.org/phases/" target="_blank">Conducting</a> assessments (darker teal) and drop-pins indicate areas <a href="http://ohi-science.org/phases/" target="_blank">Preparing</a> for their first assessment. Click on an assessment or scroll below the map for more information. 
	</p>
</div>

{% include themes/OHI/maps/allRegions.html %}


<!--  {% assign color = 'white' %}
{% assign position = 'top-left' %}
{% include themes/OHI/diagonal %} -->

<!--  <div class="container diagonal-top assessments"> -->
<div class="container assessments">
	<hgroup class="inline">
		<h5><i class="icon icon-med icon-right plus lnr lnr-plus-circle"></i> Indicates an OHI+ assessment</h5>
	</hgroup>
	
	<div class="container">
		{% include themes/OHI/assessment_list.html %}
	</div>
</div>


