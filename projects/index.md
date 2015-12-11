---
layout: default
title: Projects
description: A list of OHI+ projects
comments: false
group: navigation
---
{% include JB/setup %}

<div class="stripe display primary-color map">
	<h1>Projects</h1>
	<p>
		Here you will find a list of current and completed Ocean Health Index assessments. OHI+ assessments are led by independent groups, who receive technical guidance and support from the OHI team but are fully responsible for all decisions made and scores produced throughout the assessment process. Note that the map below indicates where assessments are taking place although the spatial boundaries may change.
	</p>
</div>

{% include themes/OHI/maps/allRegions.html %}


<!--  {% assign color = 'white' %}
{% assign position = 'top-left' %}
{% include themes/OHI/diagonal %} -->

<!--  <div class="container diagonal-top assessments"> -->
<div class="container assessments">
	<hgroup class="inline">
		<h1>OHI Assessments</h1>
		<h5><i class="icon icon-med icon-right plus lnr lnr-plus-circle"></i> Indicates an OHI+ assessment</h5>
	</hgroup>
	
	<div class="container">
		{% include themes/OHI/assessment_list.html %}
	</div>
</div>


