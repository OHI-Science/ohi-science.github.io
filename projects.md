---
layout: page
title: Projects
description: A list of OHI+ projects
comments: false
group: navigation
---
{% include JB/setup %}

<div class="stripe display primary-color">
	<h1>Projects</h1>
	<p>
		Intro paragraph about projects
	</p>
</div>

{% assign color = 'white' %}
{% assign position = 'top-left' %}
{% include themes/OHI/diagonal %}

<div class="container diagonal-top">
	<hgroup class="inline">
		<h1>OHI Assessments</h1>
		<h5><i class="icon icon-med icon-right plus lnr lnr-plus-circle"></i> Indicates an OHI+ assessment</h5>
	</hgroup>
	
	<div class="container">
		{% include themes/OHI/assessment_list.html %}
	</div>
</div>