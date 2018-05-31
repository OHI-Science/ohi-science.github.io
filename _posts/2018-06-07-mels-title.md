---
layout: post
self_contained: no
title: "Github: A beginner's guide to going back in time (aka fixing mistakes)"
author: Melanie Frazier
category : news 
tags : [news]
hidden : true
---

The approach to fixing mistakes in Git/Github depends on where you are in the process of staging/commiting/pushing your changes.  Given that the nuances of Git terminology may not be super clear to a beginner, I first describe the Git/Github workflow and then describe how to use the Git Shell to walk back changes.

I highly recommend practicing this Git super-power on a non-important repo to get practice and gain an understanding of what is going on.  Speaking from experience, applying this information in a time sensitive situation on an important repository is....undesireable (to say the least).  

### An aside
Often I find it easier (or at least less stressfull) to use low tech solutions such as rumaging through my history on GitHub to find the version of the file that I want (or, a portion of the file), and then copying/pasting this into my current working directory. I use Git everyday, but our workflow rarely requires walking back changes, and so this approach is often more intuitive and faster for me (but, definitely less cool and authoritative looking). 

*NO SHAME!*

### Cheatsheet
For future reference you can [download] a handy 3x5 card with these shell commands.

## Some terminology

The approach to reverting to previous versions of your Git files depends on knowing where you are in the Git workflow, which follows this sequence:

working directory (saved files) -> stage -> commit to history -> push to Github

Below I provide more information about each step of this sequence.  This information is specific to RStudio because I typically interact with Git through RStudio.

*Working directory*

(*Saved changes*)

When you make a change to a file and save, the file is added to the working directory. The Git tab in RStudio shows the files in the Git _Working Directory_.  
![](../assets/blog_images/working_directory.jpg)

*Staged*

Prior to being commited a file must be _staged_ .  This is indicated by a check next to the file in RStudio's Git window.

<br>

![](../assets/blog_images/staged.jpg)

<br>

*History*

(*Committed*)

Once a staged file is _committed_ it is incorporated into the Git history.
![](../assets/blog_images/commit.jpg)



*Github*

*Pushed*

Once a local file is _pushed_ to the remote (i.e., Github) it becomes available to collaborators and/or the public.
![](../assets/blog_images/push.jpg)


## A beginner's guide to walking back changes!
The following commands are entered into Git Shell, which you can access in RStudio from here:

![](../assets/blog_images/shell.jpg)


## Stage 1: Working directory 

###changes saved, but not yet staged, committed, or pushed

<span style="color:red">Delete</span> unstaged changes in the working directory:

`git clean -df`

`git checkout -- .`

[WARNING: this will delete your saved changes and is not recoverable]

*Low tech solution*

The "Commit" button in the Git window in R provides the option to "Discard All" saved changes or more targeted regions ("Discard Chunk").

![](../assets/blog_images/unstaged_delete.jpg)

## Stage 2: Staged files

Staged files can be unstaged:

`git reset HEAD -- .`

![](../assets/blog_images/git_unstage.jpg)

*Low tech solution*

Files can also be unstaged by clicking on the check boxes in the Git tab, but this can be cumbersome if there are lots of files.

## Stage 3: Committed files 

### changes saved, staged, committed, but NOT pushed to Github (or other remote)

Fixing the most recent commit

Uncommit files (but do not delete):

`git reset --soft HEAD~1`

Alternatively, <span style="color:red">Delete</span> most recent commit:

`git reset --hard HEAD~1`

[WARNING: the "hard" reset will permanantly delete the files!!!]

![](../assets/blog_images/head_definition.jpg)

Rolling back multiple commits:
I rarely have more than 1 unpushed local commit because I almost always push immediately after committing.  But, you can uncommit multiple commits. For example, the following would undo the most recent 3 commits:

`git reset --soft HEAD~3`

All the relevant files in these three commits will move to the Working Directory where they can be deleted, modified, etc.


#### Rebase

The `rebase` function can  be used to rewrite history.  My advice:

*Do NOT use rebase!!!*

This just adds extra confusion because it is almost always easier to use `reset`.  And, it is safer to use `revert`.   


## Stage 4: Pushed commits to Github 
Once you have pushed your commits to Github you will NOT want to rewrite history (which is what `reset` does).  Instead, you will want to use `revert`.

`revert` is the safest way to rollback changes because it doesn't destroy history.  It just adds updates to a new commit while keeping all the old commits. For example, if you currently have 6 commits and you want to roll back all the changes from your previous commit, a revert will leave you with 7 commits (vs. 5 commits, which is what we would expect if history was being rewritten), with the last commit including all the roll-back revisions.

This is great because it is less risky, more honest, and will not mess up other people working on the repository.  

To use revert you will need to know the commit ID (i.e., SHA) you want to alter.  

This is available from the RStudio/Git history:
![](../assets/blog_images/Rstudio_commit_log.jpg)

Or, if you prefer the Git Shell, you can use: 

`git log --pretty=format:"%h %s" HEAD~3..HEAD`

(this example will return the last 3 commits)

![](../assets/blog_images/Git_commits.jpg)

#### Delete an older commit while keeping subsequent commits
#### NOTE: This can cause merge issues, which will need to be fixed

The first step is to examine the commit history to identify the relevant commit/s:

`git log --pretty=format:"%h %s" HEAD~3..HEAD`

In this case, I wanted to delete commit `a0f46e4 adding b stuff to test 1` , so:

`git revert a0f46e4`

![](../assets/blog_images/revert_conflict.jpg)


The message indicates that I have a merge conflict.  The file with the merge conflict was moved to the working directory. From there, I can modify the merge conflict, save, and commit the file.

![](../assets/blog_images/merge_conflict.jpg)


If there are no merge conflicts you may be directed to the dreaded VIM window!
When I did the following:

`git revert 979f8da`

The VIM window popped up:
![](../assets/blog_images/revert_vim.jpg)
 
I recommend typing: `:q`

as soon as possible to exit! And, your reverted files will be saved into a new commit with the message: "Revert 'add test 2'".  This is usually good enough for me.

But, if you insist, you can alter the commit message (currently in yellow: Revert "add test 2"). To do this enter "insert" mode by typing an "i". Modify the yellow text. Exit insert mode with Ctrl+C.  Now enter :q! (this should display in the bottom region of the VIM window) and return. 

#### Rollback to a previous state (i.e., delete multiple commits)

`git revert --no-commit 979f8da..HEAD`

`git commit`

This will roll back all the changes occurring *after* commit 979f8da.  The `--no-commit` is added to prevent having to deal with each commit.




**More People of OHI Profiles**

- [Lagipoiva Cherelle Jackson](http://ohi-science.org/news/people-of-ohi-lagipoiva-cherelle-jackson): Samoa OHI+ Lead<br/>
- [Melanie Frazier](http://ohi-science.org/news/people-of-ohi-melanie-frazier): OHI Project Analyst<br/>
- [Julie Lowndes](http://ohi-science.org/news/people-of-ohi-julie-lowndes): OHI Science Program Lead<br/>
- [Erich Pacheco](http://ohi-science.org/news/people-of-ohi-erich-pacheco): OHI Director at Conservation International<br/>
- [Erin O'Reilly](http://ohi-science.org/news/people-of-ohi-erin-oreilly): OHI Communications Coordinator
