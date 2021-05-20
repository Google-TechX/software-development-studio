---
id: 04b-wiki-milestone-1
summary: Create the read-only implementation of your wiki.
authors: Tim Swast

---

# Wiki Viewer (Milestone 1)




## Overview



In this milestone, you'll create the read-only implementation of your wiki home page.

This is expected to be completed as a group.

### Prerequisites

* You must have completed the "Wiki Setup" codelab with your project group.

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* Reading files with Python
* Routing GET requests with Flask
* Working as a team


## Getting started



[Flask routes](https://flask.palletsprojects.com/en/1.1.x/api/#url-route-registrations) requests to the correct function based on a set of rules. You have already defined some these rules with the `@app.route("/")` and `@bp.route("/")` decorators in your Flask app and blueprint, respectively.

An important feature of Flask routes are variable parts. These are defined with angular brackets (`<variable_name>`) and match any string without a slash (`/`). You'll need to add an additional route to your view blueprint that contains a variable part for the page name.


## Requirements



### Functionality

#### 1 - Requests to localhost:8080/view/ return text from a file named FrontPage.txt

* FrontPage.txt is located in a "pages" directory.
* Rather than always returning "Hello, Blueprint!", read the file and return a response based on that.
* Bonus: The text is treated as HTML by the browser, which collapses any whitespace. This is OK for this milestone. If you'd like, figure out a way to have the output render as plain text.

#### 2 - Requests to localhost:8080/view/PageName return text from a file named PageName.txt

* Hint: Use the variable parts feature in  [Flask routing](https://flask.palletsprojects.com/en/1.1.x/api/#url-route-registrations) to extract PageName from the request path.
* Bonus: Perhaps code can be shared between this requirement implementation and requirement (1)?

### Tests

#### 3 - Test that some expected file contents are present in a response to /view/

* Hint: Make the "pages" directory path configurable (possibly by a global constant or environment variable) and create a test pages directory that can be relied on even if the real wiki pages get modified.
* Bonus: Use a  [pytest fixture to create a new temporary directory](https://docs.pytest.org/en/6.2.x/tmpdir.html#the-tmp-path-fixture) and populate that with your test data.

#### 4 - Test that some expected file contents are present in a response to /view/PageName


## Grading rubric



* 50% - Requirement (1) -- /view/
* 30% - Requirement (2) -- /view/PageName
* 20% - All tests have been implemented and pass


