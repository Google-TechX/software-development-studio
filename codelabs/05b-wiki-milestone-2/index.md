---
id: 05b-wiki-milestone-2
summary: Create a design doc for a formatting implementation in your wiki.
authors: Jack Rosenthal

---

# Wiki Formatting Design Doc (Milestone 2)




## Overview



For this milestone, you'll be creating a design doc for your wiki formatting implementation.

This is expected to be completed as a group.

### Prerequisites

* Wiki Milestone 1

### What you'll need

* Web browser (Google Chrome recommended)

### What you'll learn

* How to collaborate on a design doc with your team
* Security considerations of allowing formatting in HTML


## Getting started



1. Create a Google Doc and share it with your group.
2. Add a title to the document ("Wiki Formatting Design Document"), author names and emails, and add section headers: "Background", "Proposal", "Implementation Details", "Security Considerations", "Alternatives Considered", and "Resources".
3. Collaborate on the document with your group. Reference the remainder of the codelab for guidance on what goes in each section.


## Background Section



In this section, describe the problem you're trying to solve (formatting). **Keep it brief:** just a few sentences or less. Don't go into your proposal or implementation details.


## Proposal Section



In this section, describe a high level overview of how you intend to implement Wiki Formatting. Keep it just a couple paragraphs or less.


## Implementation Details Section



In this section, you get to describe the fine details on how you plan to implement the formatting requirements. Feel free to add subsections here as necessary to talk about individual functionalities.

This section should be the longest section of your design document. While small code snippets are permissible to discuss implementation, they should be generally backed by textual descriptions.


## Security Considerations Section



In this section, describe how your design mitigates dangerous HTML insertions. For example, prevents the following code snippet from being displayed as HTML:

```
<script>window.alert("Hacked!")</script>
```


## Alternatives Considered Section



In this section, describe alternative approaches (create one alternative approach per subsection), and why you decided not to use these approaches.

You must discuss at least two alternative approaches.


## Resources Section



This section should be a bulleted-list of links or resources that may be useful to a reader looking to get more background on your document.

You must link at least one resource.


## Submission



To submit your document, press `File > Download > PDF` in Google Docs. Upload the PDF to your Cloud Console, and commit it as `FormattingDesignDoc.pdf` in your wiki repository. Push the commit to GitLab to submit.


## Requirements



### Document

#### 1 - Includes all requested sections

* Includes "Background", "Proposal", "Implementation Details", "Security Considerations", "Alternatives Considered", and "Resources" sections.

#### 2 - Sections meet described contents

* Your design doc sections should satisfy the descriptions previously mentioned in this codelab.

#### 3 - Alternatives discussed

Discuss at least two alternative proposals in your alternatives considered section.

### Implementation Capabilities

#### 4 - The implementation should offer these features

* Headers (single level is OK)
* Separated paragraphs
* Links to other pages on the wiki

#### 5 - The implementation should be secure from dangerous HTML insertion

Don't allow HTML tags other than a limited subset of allowed tags.


## Grading rubric



Remember: to receive a grade, you must submit a peer feedback form indicating which work you did and which was done by your teammates. This will be sent to you shortly after the due date.

* 15% - Background Section
* 15% - Proposal Section
* 30% - Implementation Section
* Make sure you offer all features in Requirement 4 (headers, paragraphs, links) if you wish to receive full credit for this section.
* 15% - Security Considerations Section
* Make sure you meet Requirement 5 (describe how you'll mitigate dangerous HTML insertion) if you wish to receive full credit for this section.
* 20% - Alternatives Considered Section
* Make sure you meet Requirement 3 (discuss at least two alternative proposals) if you wish to receive full credit for this section.
* 5% - Resources Section


