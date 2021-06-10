---
id: 10a-wiki-retrospective
summary: Reflect on the wiki project
authors: Tim Swast

---

# Wiki Retrospective




## Overview



In this milestone, you'll reflect on the wiki project as a group. What worked well? What did you learn? What would you do differently next time?

### Prerequisites

* You must have completed (or mostly completed) work on you wiki project.

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* Prepare a technical presentation
* Identify and share lessons learned


## Getting started



The goal of a retrospective is to document what happened, identify what went well, what could have been better, and plan what might be done differently next time.

Create a document and share it with your teammates. Add the following headings:

* Target audience
* Timeline
* What went well
* What could have gone better
* Lessons learned

Work with your group to fill these out.

Most importantly, this exercise should be *blameless*. Focus on identifying the contributing causes (What happened? What assumptions were made? What expectations were there?) without indicting any individual or team for bad or inappropriate behavior. Assume that everyone involved in an incident had good intentions and did the right thing with the information they had.


## Target audience



Your retrospective should be targeted at your classmates. Also imagine any future cohorts of students who might be able to learn from your experience.


## Timeline



List the main events of the project and their dates in chronological order. The project milestones may be a good starting point for this section. You may also want to use the git commit history as a reminder of what work was done and when.

Once you have listed the main events, each of you may share their general feeling of how things went. See:  [https://www.funretrospectives.com/the-peaks-and-valleys-timeline/](https://www.funretrospectives.com/the-peaks-and-valleys-timeline/)


## What went well



Identify the things that really worked well. These could be technical solutions, team process (emails, meetings, chat, pair programming), or anything else that helped the project be successful.


## What could have gone better



Identify the things that didn't work as well as you'd hoped. These issues could be technical, team process, or anything else that prevented the project from being as good as you'd hoped it would be.


## Lessons learned



What would you do differently next time you build a project like this? What would you tell students who are just starting their wiki projects?


## Finishing up



To turn in this assignment, share an exported PDF copy of your Retrospective in your wiki project repository in GitLab.

### Download PDF

Download a PDF copy of your PRD document to your computer. Navigate to File -> Download -> PDF Document in the Google Docs menu.

<img src="img/e67c08359651d159.png" alt="e67c08359651d159.png"  width="624.00" />

### Open your development environment

1. Click the pencil icon to open Cloud Shell Editor.
2. Navigate to the File -> Open menu button.
3. Select the "wiki" directory which you created last week.

### Upload the PDF to Cloud Shell

1. Navigate to the File -> Upload Files... menu button.
2. Select the PDF file from your computer that you downloaded from Google Docs.

Note: Cloud Shell Editor may not be able to render the PDF. That's OK. You'll verify the file was correctly uploaded in a later step.
3. Make sure the file is in your "wiki" repository directory.

### Push to GitLab

1. Add the PDF to the Git staging area. Change the path to the name of your PDF file.

```console
git add wiki-retrospective.pdf
```

2. Commit your changes.

```console
git commit -m 'add wiki retrospective'
```

3. Push your changes to GitLab.

```console
git push origin main
```

### Verify that the PDF has been uploaded

1. Navigate to your project group on the  [TechX GitLab instance](https://techx-gitlab.640k.net/).
2. Open your wiki repository.
3. Click the PRD PDF file.
4. Verify that you can see the PDF contents in the GitLab interface.


