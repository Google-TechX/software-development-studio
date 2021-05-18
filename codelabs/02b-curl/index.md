---
id: 02b-curl
summary: Use cURL and the subprocess module access a web API from Python.
authors: Tim Swast
source: 1J8ynLAbtXq3HRZBWTmZD6u9WI8jE6xr8FNoTwJcajII
duration: 0

---

# Calling a Web API from Python




## Overview



In this codelab, you'll use the Python subprocess module with the cURL command to work with a web API.

### Prerequisites

* Using Cloud Shell and Cloud Shell Editor ( [codelab](https://google-techx.github.io/software-development-studio/01a-cloud-shell/?index=/software-development-studio/#0))
* Using Git ( [codelab](https://google-techx.github.io/software-development-studio/01b-git/?index=/software-development-studio/#0))

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* Use cURL to explore a web API
* Use the Python subprocess module to call an external program
* Test your Python code with pytest


## Getting started



The web comic  [xkcd](https://xkcd.com/) is somewhat popular among developers. It provides a web API for downloading information about the comic, documented at  [https://xkcd.com/json.html](https://xkcd.com/json.html).

<img src="img/cf1701606eac402f.png" alt="cf1701606eac402f.png"  width="500.00" />

Use the API from the command line to learn how it works.

1. Open Cloud Shell
2. Use the  [cURL command line program](https://curl.se/docs/manual.html) to make a request to the xkcd API.

```console
curl -L https://xkcd.com/info.0.json
```


You should see output like the following:

```
{"month": "5", "num": 2461, "link": "", "year": "2021",
 "news": "", "safe_title": "90's Kid Space Program",
 "transcript": "",
 "alt": "NASA may not want to admit it, but at this point they ARE the 90's Kid Space Program.",
 "img": "https://imgs.xkcd.com/comics/90s_kid_space_program.png",
 "title": "90's Kid Space Program", "day": "10"}
```

3. Try on your own to make a request with cURL to get the information for a specific comic number.
4. Find the `lesson02-curl` project in GitLab that the instructors have created for you.
5. Clone the repository.

```console
git clone git@techx-gitlab.640k.net:s-USER/lesson02-curl.git
```

6. Open Cloud Shell Editor in the directory just created.
7. Open the Terminal in Cloud Shell Editor.
8. Run the tests with the pytest command.

```console
pytest download_comic_test.py
```

Not all tests have been implemented. Some failures are expected. You should see 4 passing tests and 2 failing tests.


## Requirements



### Functionality

#### 1 - Use cURL from Python to request comic info from the API.

* If num is set to None, request the information for the latest comic.
* Otherwise, request the information for the comic corresponding to the number provided.
* Hint: Python provides a  [subprocess.run()](https://docs.python.org/3/library/subprocess.html#subprocess.run) function to call commands from your program.
* Hint: Pass `capture_output=True` to `subprocess.run()` to tell Python to save the bytes output from the program.

#### 2 - Use cURL to download the bytes for the image referenced.

* Hint: Use subprocess.run in the same way as when downloading comic information.

#### 3 - Parse the comic information response.

* Hint: Python provides a  [json.loads(str_or_bytes)](https://docs.python.org/3/library/json.html#json.loads) function to parse JSON text.

#### 4 - If the output directory does not exist, create it.

* Hint: The  [os.makedirs()](https://docs.python.org/3/library/os.html#os.makedirs) function creates a directory and any missing parent directories.
* Hint: The `exist_ok=True` argument prevents errors when the directory already exists.

#### 5 - Save the alt text to a file named "alt.txt" in a specified output directory.

* Hint: Open the file in "text mode".

#### 6 - Save image to a file named "img.png" in a specified output directory.

* Hint: Open the file in "binary mode".

### Tests

#### 7 - Integration test with no comic number

* Hint: Use the  [tmp_path pytest fixture](https://docs.pytest.org/en/6.2.x/tmpdir.html#the-tmp-path-fixture) to get a temporary directory for testing.

#### 8 - Integration test when a comic number is specified

#### 9 - Tests pass when run with pytest


## Grading rubric



* 50% - Code must be pushed to the repository in GitLab which has been created for you.
* 50% - All requirements have been met.


