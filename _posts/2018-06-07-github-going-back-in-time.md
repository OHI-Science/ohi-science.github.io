---
layout: post
self_contained: no
title: "GitHub: A beginner's guide to going back in time (aka fixing mistakes)"
author: Melanie Frazier
category : news 
tags : [news]
hidden : true
---

<!-- Note: I tried to remove "rollback" when I saw it because I don't think it's obvious what that means for non-native speakers-->

## Background

Git and GitHub are open source software programs we use for version control, which means tracking how files change over time. Git and GitHub work together, with Git tracking and versioning your files, and GitHub storing them online and helping you collaborate with others. With this software, you can see different versions of a file with information about who contributed it, and when, line-by-line. This makes collaboration easier, and it allows you to go back in time to different versions or contribute to others’ work. 

Version control also makes it possible to go back and fix mistakes you have made. The approach to fixing mistakes in Git/GitHub depends on where you are in the process of staging/committing/pushing your changes. If you are not familiar with this Git terminology that is OK: I first describe the Git/GitHub workflow and then describe how to use Git from the command line (also called the Git Shell) to walk back changes.

I highly recommend practicing this Git super-power on a non-important repository to gain an understanding of what is going on. <!---Erin, do you think it would be useful to say "if you'd like a repository to practice on, you can [fork](link to what this means) this [OHI demo repository]()---> Speaking from experience, applying this information in a time sensitive situation on an important repository is... undesirable (to say the least).  

#### An aside

Often I find it easier (or at least less stressful) to use low tech solutions, such as rummaging through my history on GitHub to find the version of the file (or portion of the file) I want, and then copying/pasting this into my current working directory. Although I use Git every day, I rarely need to go back in time to fine changes, so this low tech approach is often more intuitive and faster for me (but definitely less cool and authoritative looking). *NO SHAME!*

#### Cheatsheet

For future reference you can [download](https://GitHub.com/OHI-Science/ohi-science.GitHub.io/raw/master/assets/blog_images/GitHub_3x5cards_WalkBackChanges.pdf) a handy 3x5 card with all the Git commands I describe below.

<br>

## Some terminology

The approach to reverting to previous versions of your Git files depends on knowing where you are in the Git workflow, which follows this sequence:

<br>

<center><img src="../assets/blog_images/workflow.jpg" width="700px"></center>

<br>

Below I provide more information about each step of this sequence. This information is specific to RStudio because I typically interact with Git through RStudio.

<br>

#### Working directory (*saved changes*)

When you make a change to a file and save, the file is added to the working directory. The Git tab in RStudio shows the files in the Git _Working Directory_.  

<br>

<center><img src="../assets/blog_images/working_directory.jpg" width="600px"></center>

<br>

#### Staged

Prior to being committed, a file must be _staged_.  This is indicated by a check next to the file in RStudio's Git window.

<br>

<center><img src="../assets/blog_images/staged.jpg" width="600px"></center>

<br>

#### Committed to history

Once a staged file is _committed_, it is incorporated into the Git history.

<br>

<center><img src="../assets/blog_images/commit.jpg" width="600px"></center>

<br>

#### Pushed to GitHub

Once a local file is _pushed_ to the remote (i.e. GitHub), it becomes available to collaborators and/or the public.

<!-- for "to the remote" does to the remote server or remote site also make sense? I think it would help clarify what that means -->

<br>

<center><img src="../assets/blog_images/push.jpg" width="600px"></center>

<br>

## A beginner's guide to walking back changes!

The following commands are entered into the Git Shell, which you can access in RStudio from here:

<center><img src="../assets/blog_images/shell.jpg" width="600px"></center>

<br>

<!-- Mel: do these have to be "Stage 1,2..."? That seems confusing bc git stages files. How about Step 1, 2...-->
### Stage 1: Working directory 

#### Changes saved, but not yet staged, committed, or pushed

<span style="color:red">Delete</span> unstaged changes in the working directory with `clean`:

`git clean -df`

`git checkout -- .`

[WARNING: this will delete your saved changes and is not recoverable]

#### *Low tech solution*

The "Commit" button in the Git window in R provides the option to "Discard All" saved changes or more targeted regions ("Discard Chunk").

<br>

<center><img src="../assets/blog_images/unstaged_delete.jpg" width="600px"></center>

<br>

<!--Mel: I didn't know you could do this, and by chunk! So cool. I click on "revert" instead of "discard". Do you know if there is a difference? Is it worth mentioning "revert"?-->

### Stage 2: Staged files

Staged files can be unstaged with `reset`:

`git reset HEAD -- .`

<br>

<!-- Mel: I don't understand this figure. What does "typing a command in the GitHub window" mean? Is that a screenshot of what Git Shell looks like on a window? Maybe we could also show it on a Mac, I can take the screenshot-->
<center><img src="../assets/blog_images/git_unstage.jpg" width="600px"></center>

<br>

#### *Low tech solution*

Files can also be unstaged by clicking on the check boxes in the Git tab, but this can be cumbersome if there are a lot of files. However, after you have highlighted one file, you can type Command-A (select all) to highlight all of them, and you can stage or unstage all that are highlighted.

<br>

### Stage 3: Committed files 

#### Changes saved, staged, committed, but NOT pushed to GitHub (or other remote)

*Fixing the most recent commit*

<!-- Mel: can you give a little more description here? I'm trying to think of what I would/not be deleting and where that would leave me? Is the first case "uncommit files but don't delete": does that take you back to staged? and does the "delete" case leave you where you started after your previous commit (ie before you started working right now)? or does it delete the actual file (and what is an example of why you would want that?) -->

Uncommit files (but do not delete): `git reset --soft HEAD~1`

Alternatively, <span style="color:red">Delete</span> most recent commit: `git reset --hard HEAD~1`

[WARNING: the "hard" reset will permanently delete the files!!!]

<br>

<center><img src="../assets/blog_images/head_definition.jpg" width="400px"></center>

<br>

*Rolling back multiple commits*

I rarely have more than 1 unpushed local commit because I almost always push immediately after committing.  But, you can uncommit multiple commits. For example, the following would undo the most recent 3 commits:

`git reset --soft HEAD~3`

All the relevant files in these three commits will move to the Working Directory where they can be deleted, modified, etc.

#### Rebase

The `rebase` function can be used to rewrite history.  My advice: **Do NOT use rebase!!!** This just adds extra confusion because it is almost always easier to use `reset`.  And, it is safer to use `revert`. <!-- Mel: can you add a bit about this? Even if it's "we will talk about `revert` next, and we've seen `reset` and will keep using it below... (I hadn't noticed that we'd used reset! haha)  -->

<br>

## Stage 4: Pushed commits to GitHub 

#### Revert
Once you have pushed your commits to GitHub, you will NOT want to rewrite history (which is what `reset` does).  Instead, you will want to <!-- Mel: jump back to a point in history (?), which means using--> use `revert`. <!-- Mel: hadley has a great figure on this in one of his webinars, I can find it for you it might be really helpful here -->

`revert` is the safest way to rollback changes because it does not destroy history.  It lets you add onto a previous commit (as a new commit) while keeping all the commits that occurred in between. <!-- Mel: that last sentence wasn't super clear to me, I changed it but can you see if it is still true/accurate? -->For example, if you currently have 6 commits and you want to rollback all the changes from your previous commit, a revert will leave you with 7 commits (vs. 5 commits, which is what we would expect if history was being rewritten), with the last commit including all the rollback revisions. <!--Mel: We should make this example more clear but I'm having trouble thinking how! Maybe hadley's figure will help but let's talk about it?-->

This is great because it is less risky, more honest, and will not mess up other people working in the repository. To use revert you will need to know the commit identifier number (called a [SHA] (<!--link to what is a shaw-->)) you want to alter. This is available from the RStudio/Git history:

<br>

<center><img src="../assets/blog_images/Rstudio_commit_log.jpg" width="600px"></center>

<br>

Or, if you prefer the Git Shell, you can use: 

`git log --pretty=format:"%h %s" HEAD~3..HEAD`

(this example will return the last 3 commits)

<br>

<center><img src="../assets/blog_images/Git_commits.jpg" width="600px"></center>

<br>

#### Delete an older commit while keeping subsequent commits
##### NOTE: This can cause merge issues, which will need to be fixed

The first step is to examine the commit history to identify the relevant commit(s): `git log --pretty=format:"%h %s" HEAD~3..HEAD`

In this case, I wanted to delete commit `a0f46e4 adding b stuff to test 1` , 
<!-- Erin/Mel: I think we should break this screenshot into 2 pieces so the text I've split with this comment can help show what's being typed:-->
so: `git revert a0f46e4`

<br>

<center><img src="../assets/blog_images/revert_conflict.jpg" width="600px"></center>

<br>

The error message indicates that I have a merge conflict. But it helpfully gives me hints of why this might be the case! At the same time, Git moves the file with the merge conflict to the working directory with an orange U so I can inspect it. From there, I can modify the merge conflict, save, and commit the file. <!--Mel: should we show how to do this or state that they should know how to do this or point them elsewhere (ie the section that addresses merge conflicts in ohi-science.org/data-science-training? --> 

<br>

<center><img src="../assets/blog_images/merge_conflict.jpg" width="600px"></center>

<br>

If there are no merge conflicts, you may be directed to the dreaded VIM window! When I did the following: `git revert 979f8da`, the VIM window popped up:

<br>

<center><img src="../assets/blog_images/revert_vim.jpg" width="600px"></center>

<br>
 
I recommend typing: `:q` as soon as possible to exit! And, your reverted files will be saved into a new commit with the message: "Revert 'add test 2'".  This is usually good enough for me.

<!-- the second sentence above doesn't make sense to me. exiting makes it seem like that screen doesn't run anything but then the next sentence says it saves the files. Maybe add: Even if you exit this window without making any changes, your reverted files will be saved... -->

But, if you insist, you can alter the commit message (currently in yellow: Revert "add test 2"). To do this enter "insert" mode by typing an "i". Modify the yellow text. Exit insert mode with Ctrl+C.  Now enter `:q`! (this should display in the bottom region of the VIM window) and return. <!-- To learn more about VIM, see [these resources]()-->

#### Rollback to a previous state (i.e. delete multiple commits)

`git revert --no-commit 979f8da..HEAD`

`git commit`

This will rollback all the changes occurring *after* commit 979f8da.  The `--no-commit` is added to prevent having to deal with each commit.

<br>

## Summary

Within coding it is easy to make mistakes, but version control systems like Git and GitHub make it possible for us to go back in time and fix these mistakes. This workflow diagram summarizes what I covered in the blog and is a helpful reference for understanding how to move forwards and backwards in Git/GitHub. 

<br>

<center><img src="../assets/blog_images/workflow_more_info.jpg" width="700px"></center>

<br>


<br>

<!-- I think there should be some kind of ending here. Even if it's that is a quick look into how you can go back in time with Git. There is a lot more to learn from these resources, but this covers most of what we do with the OHI... -->

**Other Technical Blog Posts**

- [Cropping rasters down to size](http://ohi-science.org/news/cropping-rasters-down-to-size)<br/>
- [How to build a successful OHI technical team](http://ohi-science.org/news/how-to-build-successful-technical-team)
