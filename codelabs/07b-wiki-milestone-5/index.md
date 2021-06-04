---
id: 07b-wiki-milestone-5
summary: Implement editing on another team's wiki.
authors: Tim Swast

---

# Wiki Editing Merge Request (Milestone 5)




## Overview



In this milestone, you'll implement editing on another team's wiki.

This is expected to be completed as a group.

### Prerequisites

* You must have completed the "Wiki Setup" codelab with your project group.
* You must have completed the "Merge request" codelab.

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* Designing and rendering HTML forms
* Processing POST requests with Flask
* Making design decisions about a complex feature
* Working with an unfamiliar code project
* Reviewing code from contributors


## Getting started



One of the core features of a wiki is that users are able to edit (just about) any page. At the moment, users must modify text files in the source in order create or update pages. It would be easier for users if they could edit or create pages from the web.

In this project, you'll implement editing on another team's wiki. You'll also review the merge requests that another team sends to you.

Implementing the editing feature will require additional request handlers in your Flask application, as well as a way to store page edit history. The instructors have suggested a design which you may use to implement this feature. Review the  [design document](https://docs.google.com/document/d/1jF0tn8lql_g647RCEiRw_UOhLIzDSuMPcjlIpaLiO0I/edit#) for details.


## Requirements



### Editing implementation

#### 1 - Users can navigate to an edit form from view page

#### 2 - Users can navigate to page history from view page

#### 3 - Edit form includes necessary fields

* Page content (in original "raw" syntax, *not* rendered as HTML)
* Editor name
* Editor email
* Description of the edit
* Submission button

#### 4 - Edit form submission validates input

* Show edit form and display a message in case of errors

#### 5 - Ability to create new page when page does not exist

* Edit form indicates in some way that a new page will be created

#### 6 - Page history includes necessary fields

A separate item is show for each edit to the page. Each item of history contains at least:

* Time of edit
* Editor name
* Editor email
* Description of the edit

### Merge requests

#### 7 - Send at least 1 merge request implementing the editing feature

Tip: Smaller merge requests are easier to review. You may wish to send several requests so that you can get feedback more quickly. 

Suggested merge requests:

* Add empty or nearly-empty request handlers for new routes.
* Links to new pages (Edit, History) from the template associated with page viewing.
* Edit form template and GET handler
* Edit form POST handler
* History view template and GET handler

You may split (or combine) any of these as makes sense for the project you are editing and the preferences of the team you are working with.

Tip: Make sure your tests and lint pass when (or before) sending your merge request.

#### 8 - Review the editing merge requests that are sent to you

Use the review feature in GitLab to send comments to the contributors to your wiki.

If there are failing tests or lint errors, point these out and provide suggestions as to how they might be corrected.

#### 9 - Address any feedback the other team provides to you

Resolve any feedback issues the other team identifies. Push new commits to your branch fixing these errors.

#### 10 - Merge the merge requests once all feedback has been addressed

Once the merge requests are ready, merge them into your project.

Resolve any conflicts that are encountered. You may need to consult with the contributing team to decide the best approach for resolving conflicts.


## Grading rubric



Remember: to receive a grade, you must submit a peer feedback form indicating which work you did and which was done by your teammates. Non-coding tasks such as help debugging also counts towards participation. This link will be generated and emailed to you after the due date.

* 5% - Requirement (1) -- navigate to an edit form from view page
* 5% - Requirement (2) -- navigate to page history from view page
* 10% - Requirement (3) -- edit form includes necessary fields
* 10% - Requirement (4) -- edit form submission validates input
* 10% - Requirement (5) -- create new page when page does not exist
* 10% - Requirement (6) -- page history includes necessary fields
* 5% - Requirement (7) -- send merge request(s)
* 20% - Requirement (8) -- review merge requests that are sent to you
* 20% - Requirement (9) -- address feedback the other team provides
* 5% - Requirement (10) -- merge the editing merge requests


