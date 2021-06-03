---
id: 07a-merge-request
summary: Get familiar with another team's repository and create merge requests to update their project.
authors: Tim Swast

---

# Wiki Merge Request




## Overview



In this codelab, you'll prepare for Milestone 5 by getting familiar with another team's repository. Also, you'll create merge requests to update their project.

This should be completed with your project groups.

### Prerequisites

* Cloud Shell
* Git
* Linux command line

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* Push branches to another team's repository
* Submit a merge request to another team's repository
* Review and merge a merge request from another team.
* Resolve conflicting merge requests in the GitLab web interface


## Find the repository you'll contribute to



> aside positive
> All students should complete these steps.

The instructors have granted you Developer permissions to another team's repository in GitLab. Find their repository and clone it to your development environment.

1. Navigate to the Projects page in GitLab ( [techx-gitlab.640k.net/dashboard/projects](https://techx-gitlab.640k.net/dashboard/projects)).

<img src="img/ebd8c155c2464c5a.png" alt="ebd8c155c2464c5a.png"  width="624.00" />

You should see another wiki repository there. In this example, g-testprojectgroup2 refers to the team to which you'll be contributing your changes.
2. Navigate to the other team's wiki repository.
3. Click the "Clone" button and copy the text from "Clone with SSH".


## Clone the repository



> aside positive
> All students should complete these steps.

Next, clone the other team's repository to your development environment.

1. Open Cloud Shell (Terminal).
<img src="img/e38ac4f4637abb7b.png" alt="e38ac4f4637abb7b.png"  width="624.00" />
2. Ensure you are in the directory where you want to be before cloning the other team's repository.

See your current directory with the `pwd` command.

```console
pwd
```

You should see `/home/YOUR_USERNAME` or wherever you intend to clone the repository.


List the contents of this directory with the `ls` command.

```console
ls
```


You should see the directories of the other repositories you've cloned, including your `wiki` directory.

3. Since the other team's repository is also named "wiki", you'll need to pass an additional argument to the `git clone` command that specifies the destination directory name. As you can see from this summary of the command, there is an optional "<directory>" parameter after the required "<repository>" parameter.

```console
SYNOPSIS
       git clone [OPTIONS] [--] <repository> [<directory>]
```

Therefore, to clone the other team's repository to a directory named `wiki-contrib`, run the following command (replacing the repository with the one you copied from GitLab).

```console
git clone REPOSITORY_FROM_GITLAB wiki-contrib
```

4. Check that the `wiki-contrib` repository was created by listing its contents.

```console
ls wiki-contrib
```


## Setup your development environment



> aside positive
> All students should complete these steps.

Get your editor setup to contribute to the other team.

1. Open Cloud Shell Editor.
2. Open the `wiki-contrib` directory corresponding to the other team's wiki.

<img src="img/5fdb7d2cb6181628.png" alt="5fdb7d2cb6181628.png"  width="624.00" />
3. Open the terminal panel in Cloud Shell Editor.
<img src="img/67adfbc9b8c00f6d.png" alt="67adfbc9b8c00f6d.png"  width="624.00" />
4. The team you'll be contributing to may have extra Python dependencies. Install those with the pip command.

```console
pip install -r requirements.txt
```


## Edit AUTHORS.txt



> aside positive
> All students should complete these steps.

To get practice contributing to the other team's wiki, add your name to AUTHORS.txt.

1. Create a new branch. Prefix the branch name with your username to prevent conflicts. For example, if your username is `tim`, create a branch called `tim-authors`.

```console
git checkout -b tim-authors
```

2. Edit AUTHORS.txt and add a line at the bottom (or perhaps alphabetically) with your name and email.

<img src="img/ec47d2e23e303e40.png" alt="ec47d2e23e303e40.png"  width="624.00" />
3. Add the AUTHORS.txt file to your Git staging area.

```console
git add AUTHORS.txt
```

4. Commit your changes.

```console
git commit -m 'add YOUR_NAME as an author'
```


## Send merge requests



> aside positive
> All students should complete these steps.

You should not commit changes directly to the main branch of the wiki you are contributing to. Instead, create a "merge request" so that the other team can review your code before merging it.

1. Push your changes to the other team's repository.

Replace `tim` with your username.

```console
git push origin tim-authors
```

2. In the previous command, you may have seen a link like:

remote: To create a merge request for tim-authors, visit:

remote:   https://techx-gitlab.640k.net/g-testprojectgroup2/wiki/-/merge_requests/new?merge_request%5Bsource_branch%5D=tim-authors


Navigate to that link.

If no link appeared, open the Branches page in GitLab and click the "Merge request" button.
<img src="img/906888033aa7e578.png" alt="906888033aa7e578.png"  width="624.00" />

3. In the page that appears, scroll down and click the changes tab.
<img src="img/eff6bf6abb3b7004.png" alt="eff6bf6abb3b7004.png"  width="624.00" />
4. Verify that the AUTHORS.txt file has your changes.
5. The Pipelines tab contains the Continuous Integration jobs that the other team has setup in Milestone 4. View those logs to check that your changes have not introduced test or lint failures.
6. Click the "Submit merge request" button to create your merge request.

You may receive feedback about your merge request. If you do, address any feedback the other team gives you by pushing new commits to this same branch.

Note: "Merge request" is the term GitLab uses to represent a request to merge your changes into the main branch. Other tools use different terms. For example, GitHub calls this a "pull request (PR)". Critique, Google's internal code review tool, calls this a "change list (CL)".


## Review merge requests



You should have received several merge requests from another team on your own wiki project. Review these.

> aside positive
> Take turns! Each merge request should be reviewed by a different student.

Find a merge request to review.

1. Open your own wiki project on GitLab.
2. Navigate to the Merge Requests page.
<img src="img/a42fa46df4c98a80.png" alt="a42fa46df4c98a80.png"  width="624.00" />
3. Click one of the merge requests to review it.
4. In the review page, click the changes tab to see the proposed code changes. <img src="img/b147c0f343bd2220.png" alt="b147c0f343bd2220.png"  width="624.00" />

### Add review comments (Optional)

In most merge requests, there is something that needs to be changed. No programmers writes perfect code all the time! GitLab provides a feature for providing feedback.

1. If something looks wrong, hover over the line number. Click the "Add a comment to this line" button to share a comment with the author about that line.
<img src="img/6d75acf6a255a71e.png" alt="6d75acf6a255a71e.png"  width="624.00" />


Use the "Add comment now" button to immediately create a comment.

<img src="img/725b552756610478.png" alt="725b552756610478.png"  width="624.00" />

Note: The "Start a review" button is useful if you want to draft several comments and send them out all together when you are finished with your review.

2. If all is well, click the "Approve" button to indicate that you have reviewed the code.

<img src="img/7060cd3eca18fcc0.png" alt="7060cd3eca18fcc0.png"  width="624.00" />


## Merging merge requests



> aside positive
> Take turns! Each merge request should be merged by a different student.

### Resolve conflicts

Since several merge requests modified the same file, conflicts are quite likely. Thankfully, these can usually be resolved from the GitLab interface.

1. If you see conflicts, click the "Resolve conflicts" button.
<img src="img/781aa66f79bcd1f6.png" alt="781aa66f79bcd1f6.png"  width="624.00" />
2. The interface provides a couple of options: "Use ours" and "Use theirs". In this case, we want a combination of both, so click the "Edit inline" button to edit the file directly.

<img src="img/3f35955d8c2a224f.png" alt="3f35955d8c2a224f.png"  width="624.00" />
3. Remove any merge conflict indicators and combine the file as needed.

<img src="img/abf3d4ee4058da70.png" alt="abf3d4ee4058da70.png"  width="624.00" />

4. Click the "Commit to source branch" button to add a commit to this merge request resolving the conflicts.
5. Navigate to the "Changes" tab to double-check that the conflict was resolved correctly.

<img src="img/8e0e09109a29bc5a.png" alt="8e0e09109a29bc5a.png"  width="624.00" /> <img src="img/2c6cdaf2ff05df66.png" alt="2c6cdaf2ff05df66.png"  width="624.00" />

### Merge the merge request

3. Click the "Merge" button to actually merge this code into the main branch.
<img src="img/9b5ac163f80dc044.png" alt="9b5ac163f80dc044.png"  width="624.00" />
4. The "Merge request" is now merged.
<img src="img/c9bc63c41dc93c01.png" alt="c9bc63c41dc93c01.png"  width="624.00" />


## Finishing up



Double-check that the code has been pushed by viewing the code on GitLab.

If you finish early, contact the other teams you'll be working with to set up a time to talk about Milestone 5 together.


