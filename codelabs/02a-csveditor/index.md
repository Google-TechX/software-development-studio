---
id: 02a-csveditor
summary: Practice writing Python code and using pytest by writing a simple CSV editor
authors: Jack Rosenthal
source: 1j5lHbzUbKqgLEqrHm2fvTznzKSU8Us0ZTGoALSyIFrc
duration: 0

---

# Python CSV Editor




## Overview



In this codelab, you'll write a very simple program to edit CSV files using Python, and create unit tests using pytest.

A CSV ("comma-separated values") file is a common file format for tables and spreadsheets. Rows in the table are represented by lines in the file, and columns in the table are separated by comma characters (`,`).

For example, the following CSV file represents a table with 3 rows and 4 columns:

```console
Computer Model,RAM,CPU,In Stock
Chromebook Pixel,16 GB,Intel 5th Generation i7,4
Acer Chromebook Spin 713,8 GB,Intel 10th Generation i5,12
```

### Prerequisites

* Using Cloud Shell and Cloud Shell Editor ( [codelab](https://google-techx.github.io/software-development-studio/01a-cloud-shell/?index=/software-development-studio/#0))
* Using Git ( [codelab](https://google-techx.github.io/software-development-studio/01b-git/?index=/software-development-studio/#0))

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* Practice reading in a file, modifying it, and writing it out using Python File I/O
* Practice manipulating a CSV file in Python
* Test your Python code with pytest


## Clone your repo in Cloud Shell



1. Open Cloud Shell
2. Clone the repository.

```console
git clone git@techx-gitlab.640k.net:s-USER/lesson02-csveditor.git
```

3. Open Cloud Shell Editor in the directory just created.


## Create a test data file



In the cloud shell editor, create a new file called `test_data.csv`.

Populate it either with the CSV contents on the first page of this codelab, or make your own if you like.

Save the file when finished.


## Implement the CSV Editor



Open `csv_column_editor.py` and delete the `raise NotImplementedError` line (inside of `edit_csv_file`.)

Replace the contents of this function with your own implementation. Read the docstring of the function for help on what the function's arguments mean.


## Manual Tests



Manually test your CSV editor by running it with your test_data.csv you created earlier. Here is an example:

```console
./csv_column_editor.py test_data.csv 0 1 0 3
```

Inspect the output contents to see if it looks correct:

```console
$ cat test_data.csv
Computer Model,RAM,Computer Model,In Stock
Chromebook Pixel,16 GB,Chromebook Pixel,4
Acer Chromebook Spin 713,8 GB,Acer Chromebook Spin 713,12
```

If the output wasn't what you expected, or you encountered errors, go back and correct your code.


## Commit your work



We aren't done yet (we need to implement automated tests using pytest), but it's good practice to commit incremental work as you get features working!

Stage your changes:

```console
git add csv_column_editor.py
```

Create a commit (and feel free to adjust the message as appropriate):

```console
git commit -m "Implemented column editor, still need to write tests"
```

Push your changes to the `main` branch on GitLab:

```console
git push origin main
```


## Run unit tests



Do an initial run of the unit tests (some tests will be passing, and some will fail). Notice which tests are failing:

```console
python3 -m pytest csv_column_editor_test.py
```


## Implement a test parameter



Notice that `test_edit_csv` has already been implemented for you, but there's a missing parameter (see the TODO comment).

Add one more parameter to the test with new expected inputs/outputs.

Re-run the tests: 

```console
python3 -m pytest csv_column_editor_test.py
```

If you like, you can optionally add a third or even more parameters to the test.

Once you've completed this step, commit your changes again (see previous "Commit your work" step for reference on how to do this.)


## Implement out-of-range test



For this part of the activity, you'll implement the `test_edit_csv_out_of_range` test. This test should ensure that when the input parameters refer to a column which does not exist, an `IndexError` gets raised.

Unlike the previous test, this time we wrote the parameters for you, and you need to implement the test functionality.

Once implemented, run the tests again. You should have all tests passing.

Commit your changes and push to GitLab.


## You're done!



Check the GitLab Web UI to ensure your repository looks as you expect.

You should be able to do this at  [https://techx-gitlab.640k.net/s-USER/lesson02-csveditor](https://techx-gitlab.640k.net/s-USER/lesson02-csveditor) (replace USER for your username).


## Requirements



### Functionality

#### 1 - Able to process a CSV from the command line

Create a test CSV such as the one at the docstring in the top of csv_column_editor.py. Validate that the command given performs the mutation expected.

### Tests

#### 2 - Add a parameter to the test_edit_csv test

You should make your own parameter (different from ours) to the test_edit_csv test.

#### 3 - Implement test_edit_csv_out_of_range

You should implement the body of this function. Parameters were provided for you.

#### 4 - Tests pass when run with pytest


## Grading rubric



* 50% - Code must be pushed to the repository in GitLab which has been created for you.
* 50% - All requirements have been met.


