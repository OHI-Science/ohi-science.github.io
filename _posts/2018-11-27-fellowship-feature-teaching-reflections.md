---
layout: post
self_contained: no
title: "Fellowship Feature: Reflections on teaching the first cohort of fellows"
author: Melanie Frazier and Julie Lowndes
category : news 
hidden : true
---

*In 2018, we launched the Ocean Health Index Fellows Program and we (Melanie Frazier and Julie Lowndes) led its first-ever cohort of three Fellows. The Fellows conducted the annual global assessment using our open data science tools and workflows. The Fellows successfully calculated global OHI scores for 2018 while learning important skills that are valuable to the global OHI team, as well as the broader environmental data science community.* 

*In this Fellowship Feature blog series, you’ve heard a perspective of the program from each of the three Fellows ([Ellie Campbell](http://ohi-science.org/news/fellowship-demystifying-pressures-ohicore), [Iwen Su](http://ohi-science.org/news/fellowship-expanding-mariculture), and [Camila Vargas](http://ohi-science.org/news/fellowship-feature-applying-data-science-principles)), and now it’s our turn to discuss what worked well and can be improved from the teaching side for the second cohort and beyond.*

Ocean Health Index (OHI) scores provide a comprehensive and quantitative assessment of progress towards healthy and sustainable oceans. Such assessments are particularly valuable when repeated annually. Global OHI assessments incorporate data from nearly one hundred sources to evaluate the health of oceans around the world, and since its debut in 2012, we have calculated scores every year as new data becomes available. Transparency is absolutely critical for effective indicators, so we have put a great deal of effort into communication as well as making our scripts and data publically available. This has the added benefit of making the calculations efficient and reproducible for ourselves and others ([Lowndes et al. 2017](https://www.nature.com/articles/s41559-017-0160)).

Our efforts have paid off because the OHI core team has been able to reliably reproduce OHI scores each year with less and less effort. However, a true test of reproducibility would be people who are unfamiliar with the project also being able to reproduce our methods. So this year, we hired three graduate students from the Bren School of Environmental Science & Management at the University of California Santa Barbara as our first cohort of OHI Global Fellows. 

The Fellows began with limited knowledge of the OHI methodology and entry-level coding skills. The plan was to train them in the OHI theory and methods, and teach them the open data science skills they would need to conduct an OHI assessment. We would then step back and provide advisory support as they led the 2018 global assessment. 

This was a moment of truth. We were excited (and nervous): Would they succeed?  

The answer is: YES!  

And along the way we also learned things to improve upon for the future.

## Exciting things!

Ellie, Camila, and Iwen began their fellowship in January 2018, and for the first few months they worked part time as we taught them about OHI theory and methods, and our open data science workflow. We created a syllabus as a living document in Google Docs, and taught from our [open data science](http://ohi-science.org/data-science-training/) and [OHI Toolbox](http://ohi-science.org/toolbox-training/) training books, and recorded screencasts for our [YouTube channel](https://www.youtube.com/watch?v=xpe7jmt0-J4&list=PLX7J3qtjcll_4s2oaKHuWdRdBMJz7tBAU). In June, after graduating with their Master’s Degree, they worked full time to gather and prepare newly available data and calculate the 2018 OHI scores.  

The program was successful because we achieved what we had set out to do: Fellows were trained and scores were calculated for 2018. But, it was successful for so many other reasons. It proved to be an enriching experience for us to step into a mentorship role for three smart, thoughtful students. And, we learned a lot from them, from their questions, insights, and experiences they brought to the program and team.

From the technical side, the most valuable aspect of the experience was having fresh eyes to review our code and processes. This will be key to OHI’s overall reproducibility because without noticing, over the past few years our team had created several workarounds for many processes, such as organizing and accessing data from the server, that were actually quite confusing and poorly documented because we “just knew what to do.” The Fellows’ perspective allowed them to improve the code and documentation in ways that wouldn’t have occurred to us. We discussed this a bit more formally in a recent [rOpenSci Community Call about code review in academic research](https://ropensci.org/blog/2018/11/29/codereview/). 

The Fellows also brought exciting ideas and creativity to the Ocean Health Index. They created a website to document their knowledge and experiences (ohi-science.org/globalfellows), which not only let them practice their open data science skills (since the website is created with RStudio and GitHub), but will be a valuable resource for future Fellows to use and expand upon. They also improved OHI communication through their independent projects. Ellie created a `pkgdown` website that describes the `ohicore` R package we use to calculate OHI scores (ohi-science.org/ohicore); Iwen developed an interactive website that allows people to dive into the data used to calculate OHI scores; and Camila created one page summaries of goal scores for each country as well as producing the YouTube training videos.   

## Challenges

There were definitely things we could have improved! In the future, we will spend more time on the OHI theory and discussing the independent, regionally focused,  “OHI+” assessments. Having a good scientific base and understanding of how calculating annual scores is valuable for the global community and adds even more value to the data science skills and workflows. Our plan is to start with Lowndes et al. 2015, Selig et al. 2015, and Daigle et al. 2017, (ohi-science.org/publications), in addition to discussing ongoing assessments in British Columbia, the US Northeast, and the Baltic Sea. 

We will also better integrate the Fellows into the OHI team by including them in more full-team meetings. Our approach this year was be mindful of their time by limiting meetings that may not be directly relevant for the Fellows. Now we believe it is valuable for the Fellows to observe more of how we work and what we discuss, and it also creates a more inclusive and welcoming environment. In exit surveys, Fellows emphasized that seeing the overall culture of our program is valuable because they can learn how we lead collaborative teams and they can take lessons learned into the future.

On the technical side, one of the biggest challenges was that a surprising amount of the source data changed, which required updating our methods and corresponding code to accommodate the new ways data were downloaded, formatted, or reported. Of course, we expect changes in source data and accommodate these changes every year, but in 2018 it seemed particularly challenging.    

In terms of overall reproducibility, the Fellows probably would not have been able to conduct the assessment, at least in the current time frame, without the regular guidance of someone who is fairly experienced with OHI. This is partially because of our little workarounds and gaps in documented logic that added up across the nearly hundred data sources prepared each year. The relatively large time commitment on our part to smooth this process may continue be necessary, and difficult to reduce given the structure of the program and the time constraints on the Fellows. However, Iwen, Ellie, and Camila greatly increased the clarity and reproducibility through their dedicated improvements to the code, documentation, and workflow. We will definitely continue to improve on this and explore with future cohorts how, and whether, we can reduce the time commitment on our end while maintaining the quality of OHI methods, scores, and the overall Fellowship experience.  

## Things we got right

We successfully translated the OHI culture to the Fellowship program. We worked to promote a healthy learning and working environment where mistakes are expected and okay (but need to be fixed!). Throughout, we prioritized clear documentation over code optimization and encouraged creativity. We taught them how to learn more on their own, thanks to the amazing and supportive online #rstats community that makes most issues Google-able and solve-able. Fellows had a lot of unstructured time they spent learning on their own, troubleshooting, and trying to hit that balance of how much time you spend on your own before asking for help.

For internal communication and project management, we started a private Github repository that we used only for the “issues” functionality. The Fellows created new issues for each data layer they worked on to ask questions, document progress, and present results.  As we incorporated each data layer to update the scores, we added the results (i.e., distribution of scores, NAs, outlier exploration, changes from last year) to an issue dedicated to this purpose. We also used issues to capture reference materials, future improvements, and weekly to-do lists.       

Prior to the Fellows starting, we had developed a system to check our scores, and this proved key to our success in having new people contribute to the project. A fundamental problem is that so many things can go seriously wrong when updating data. This problem isn’t constrained to new people either, we deal with it for ourselves. We found that checking every line of the Fellow’s code wasn’t a tenable solution because it took too long, and plus, many problems can still go unnoticed. Instead, we relied primarily on a robust error checking system. After the Fellows updated a data layer, they would explore how the OHI scores changed from the previous year and post their results to an ongoing GitHub issue for internal review.  

For example, for this year’s 2018 assessment, we compared the 2017 results (we back-calculate all previous years of data in addition to the new year’s data) to last year’s 2017 results. If the source data and our methods remain the same (which is typically the expectation), the results should be the same! One big advantage of using GitHub is that these types of comparisons are very easy to do.  We would then explore large changes and make sure they were reasonable.

## Conclusions

It was a honor working with the next generation of data scientists! They were incredibly talented, creative, and hard working. And, they brought new energy and ideas to the OHI global assessment. Along with the release of the 2018 global scores, we have created a new webpage to capture all the Fellows’ awesomeness in one place (will be live December 4th): ohi-science.org/ohi-globalfellows. 

We are looking forward to meeting next year’s fellows.  
