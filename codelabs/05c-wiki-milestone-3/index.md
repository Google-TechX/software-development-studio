---
id: 05c-wiki-milestone-3
summary: Create a design doc for a formatting implementation in your wiki.
authors: Jack Rosenthal

---

# Wiki Formatting Implementation (Milestone 3)




## Overview



For this milestone, you will implement your design you described in Milestone 2.

This is expected to be completed as a group.

### Prerequisites

* Wiki Milestone 1
* Wiki Milestone 2

### What you'll need

* GitLab Account
* Web browser (Google Chrome recommended)

### What you'll learn

* Practical software development skills developing a larger feature


## Implement your formatting language



Implement your formatting language. If you require new dependencies, be sure to update `requirements.txt` in your repo.

Ideally, you should end up with a function which takes raw page source source and returns HTML. You can differ from this API if you wish.


## Test your formatting language



Write a test or tests which calls your formatting function. This should exercise the following features of the language:

* Headers
* Multiple paragraphs
* Page links


## Integrate your formatting function



Update your view page flask route to call the formatting function.


## Update Milestone 1 Tests



Within high probability, your Milestone 1 tests will now be failing as your formatting language is producing different results than your Milestone 1 tests would have expected. Update these tests so they are passing again.


## Requirements



### Code

#### 1 - Implement the formatting language described in your design document

* Your language, at minimum, must offer the following features:
* Headers
* Paragraphs
* Links to other pages
* You are allowed to differ from your original design doc, but if you do, please update your design document PDF in your repo to reflect the changes.

### Tests

#### 2 - New test(s) created for formatting functionality

At least one new test created which tests formatting function.

#### 3 - Existing tests updated for changes

All existing tests still passing.


## Grading rubric



Remember: to receive a grade, you must submit a peer feedback form indicating which work you did and which was done by your teammates. This will be sent to you shortly after the due date.

* 50% Implementation (Requirement 1)
* 40% Test(s) (Requirement 2)
* 10% All existing tests still passing (Requirement 3)


