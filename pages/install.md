---
layout: page
title: Install
tagline: instructions for installing the OHI software
comments: true
---
{% include JB/setup %}

## Instructions 

You can install and launch the latest OHI application from the cross-platform, open-source <a href="http://www.r-project.org" target="_blank">MapShaper.org</a> statistics software (install R on <a href="http://cran.rstudio.com/bin/windows/base/" target="_blank">Windows</a> or <a href="http://cran.rstudio.com/bin/macosx/" target="_blank">Mac</a> with the code below. To begin:

1. **Update R.** Download the latest version <a href="http://cran.r-project.org/" target="_blank">here</a>
1. **Update RStudio.** RStudio is optional, but highly recommended. Download the latest version <a href="http://www.rstudio.com/products/rstudio/download/" target="_blank">here</a>.
1. **Update all R packages.** This can be done from the 'packages' menu in R or RStudio


Now, paste the following code into your R console:


{% gist ed6a03258c3815a3e2ba install_ohicore.R %}

While not necessary, we recommend using [RStudio](http://www.rstudio.com/ide/) as your R interface for syntax highlighting of code and overall integrated development environment. To learn more about R, we've compiled some resources on [Learning R](/pages/learning_r.html).

## Upgrade

As upgrades are available for the Toolbox, please simply rerun the install instructions above after ensuring that the `ohicore` library is not already loaded. This can be done by first restarting R or by typing `remove.packages('ohicore')` in the R console.

## Video
Here's a 10.5 minute video demonstrating how to **Install and Explore the Ocean Health Index Toolbox App** as a:
<ul><li>online <a href="http://www.youtube.com/watch?feature=player_embedded&amp;v=v8Dtke2y2uE" target="_blank">YouTube video<br><img src="http://img.youtube.com/vi/v8Dtke2y2uE/mqdefault.jpg" alt="Install and Explore the Ocean Health Index Toolbox App" border="2"/></a></li><li>or downloadable <a href="http://ohi.nceas.ucsb.edu/video/ohi_app_install_explore.wmv">Windows media video</a> (29 MB)</li></ul>

## Problems?
Please see [Troubleshooting](/pages/troubleshoot.html) page.

## Next Steps
If you are interested in creating a custom OHI analysis scenario specific to a country, you may want to start with these tips on how to [Create Regions](/pages/create_regions.html).
