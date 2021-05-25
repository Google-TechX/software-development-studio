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



[Flask routes](https://flask.palletsprojects.com/en/1.1.x/api/#url-route-registrations) requests to the correct function based on a set of rules. You have already defined a rule with the `@app.route("/")` decorator in your Flask app.

An important feature of Flask routes are variable parts. These are defined with angular brackets (`<variable_name>`) and match any string without a slash (`/`). You'll need to add a function and a route that contains a variable part for the page name.

In addition to routes, you'll be using  [Flask templates](https://flask.palletsprojects.com/en/1.1.x/tutorial/templates/) in your wiki project. 

1. Create a directory named `templates`.
2. Create a file named `main.html` in the `templates` directory.
3. Add the following  [jinja2](https://jinja.palletsprojects.com/en/2.11.x/templates/) code to `main.html`:

```
<!DOCTYPE html>
<title>{{ page_name }}</title>
<pre>{{ page_content }}</pre>
```

4. To use this template import the  [render_template](https://flask.palletsprojects.com/en/1.1.x/api/#flask.render_template) function with, `from flask import render_template` at the to of your `wiki.py` module.
5. Return the rendered template by calling the rendered template function in your request handler function(s).

```console
@app.route(...)
def handle_request(...):
    # TODO: load the desired page content
    return render_template(
        "main",
        page_name=...,
        page_content=...,
    )
```


## Requirements



### Functionality

#### 1 - Requests to localhost:8080/view/ return text from a file named FrontPage.txt

* FrontPage.txt is located in a "pages" directory (i.e. at "`pages/FrontPage.txt`").
* Rather than always returning "Hello, World!", read the file and return a response containing the text file contents.
* Bonus: The text is treated as HTML by the browser, which collapses any whitespace. This is OK for this milestone. If you'd like, figure out a way to have the output render as plain text.
* Bonus: Instead of returning the text directly, can you re-use the code from requirement #2? Hint: the  [flask.redirect](https://flask.palletsprojects.com/en/1.1.x/api/?highlight=redirect#flask.redirect) function may be useful.

#### 2 - Requests to localhost:8080/view/PageName return text from a file named PageName.txt

* PageName.txt is located in a "pages" directory (i.e. at "`pages/PageName.txt`").
* Hint: Use the variable parts feature in  [Flask routing](https://flask.palletsprojects.com/en/1.1.x/api/#url-route-registrations) to extract PageName from the request path. You'll need to add an argument to the request handler function you create for this.

### Tests

For each of these requirements, use the "`client`" pytest fixture that you created in the  [Wiki Flask setup codelab](https://google-techx.github.io/software-development-studio/04a-wiki-flask/?index=/software-development-studio/#0).

#### 3 - Test that some expected file contents are present in a response to /view/

* Hint: Make the "pages" directory path configurable (possibly by a global constant or environment variable) and create a test pages directory that can be relied on even if the real wiki pages get modified.
* Bonus: Use a  [pytest fixture to create a new temporary directory](https://docs.pytest.org/en/6.2.x/tmpdir.html#the-tmp-path-fixture) and populate that with your test data.

#### 4 - Test that some expected file contents are present in a response to /view/PageName


## Grading rubric



Remember: to receive a grade, you must submit a peer feedback form ( [docs.google.com/forms/d/e/1FAIpQLSfX6lQgZl_7xw5Ig8OowGU8njuC0g73LUuhgQduRb6PIkwWwg/viewform?usp=sf_link](https://docs.google.com/forms/d/e/1FAIpQLSfX6lQgZl_7xw5Ig8OowGU8njuC0g73LUuhgQduRb6PIkwWwg/viewform?usp=sf_link)) indicating which work you did and which was done by your teammates. Non-coding tasks such as help debugging also counts towards participation.

* 50% - Requirement (1) -- /view/
* 30% - Requirement (2) -- /view/PageName
* 20% - All tests have been implemented and pass


