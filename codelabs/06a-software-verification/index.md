---
id: 06a-software-verification
summary: Use common software verification tools like linters and type checkers to fix issues in a Python program.
authors: Jack Rosenthal
source: 1pvf74NCNr5ySykfTzbLhxoRrArZvOSWYN5-tIZHY1LI
duration: 0

---

# Software Verification Tools




## Overview



In this codelab, you'll use common software verification tools like linters and type checkers to fix issues in a Python program.

### Prerequisites

* Using Cloud Shell and Cloud Shell Editor ( [codelab](https://google-techx.github.io/software-development-studio/01a-cloud-shell/?index=/software-development-studio/#0))
* Using Git ( [codelab](https://google-techx.github.io/software-development-studio/01b-git/?index=/software-development-studio/#0))
* Using Python and Pytest

### What you'll need

* Google account
* GitLab account
* Web browser (Google Chrome recommended)

### What you'll learn

* Use flake8 to identify issues in a Python project
* Analyze type issues with mypy
* Run a code coverage tool to identify missing tests


## Getting Started



1. Clone your starter code repo:

```console
git clone git@techx-gitlab.640k.net:s-USERNAME/lesson06-codequality
```

2. `cd` into the `lesson06-codequality` directory.
3. Run the tests using pytest and notice they pass.

```console
pytest .
```

4. Open up `pathfinder.py` and read the docstring at the top.
5. Familiarize yourself with the operation of pathfinder.py by running a navigation:

```console
./pathfinder.py city_map.txt Denver Boulder
```


## Linting with flake8



`flake8` is a highly-trained linter capable of detecting violations of the  [PEP-8 style guidelines](https://www.python.org/dev/peps/pep-0008/).

Try running the linter. You'll notice there's a number of warnings it generates:

```console
flake8 .
```

1. Open up `pathfinder.py` and work on correcting the style issues reported by `flake8`.
2. Run `flake8` again. When you have no style issues, you should notice it prints nothing and has a successful return code (`echo $?` after running it prints `0`).
3. Ensure the unit tests still pass (if they don't, then fix it).
4. Commit and push your work.


## Static Type Checking with mypy



`mypy` is capable of understanding the type annotations put in `pathfinder.py` and detecting any type issues.

Try running it to see the issues it reports:

```console
mypy .
```

5. Open up `pathfinder.py` and work on correcting the annotation issues reported by `mypy`.
6. Run `mypy` again. When you have no style issues, you should notice it prints nothing and has a successful return code (`echo $?` after running it prints `0`).
7. Ensure the unit tests still pass (if they don't, then fix it).
8. Commit and push your work.


## Test Coverage



Pytest has a coverage option which shows you which lines get tested by unit tests, and which tests don't.

Run pytest like this to see the current code coverage:

```console
pytest --cov=pathfinder --cov-report term-missing .
```

Here, `--cov=pathfinder` says we want a coverage report for the `pathfinder` module, and `--cov-report term-missing` asks pytest to print the lines which are missing test coverage. On my code, I got the following:

```console
Name            Stmts   Miss  Cover   Missing
---------------------------------------------
pathfinder.py      63      4    94%   74, 83, 93, 143
```

This means:

* `pathfinder.py` has 63 statements
* 4 statements do not have test coverage
* 94% of the statements do have coverage
* The statements which don't have coverage are located on lines 74, 83, 93, and 143

1. Line 143 (or the last coverage missing line) is a simple call to the main function, which isn't really testable (these same two lines are considered "boilerplate" that gets copy-pasted to many projects).  Add a special comment to the end of the line so pytest will ignore the lack of coverage here:

```console
if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))  # pragma: no cover
```

2. Run pytest with coverage again and notice the missing section no longer has this line.
3. Let's look at line 93 (or the second to last missing line). This line only gets executed if there's no route from the source to the destination. Let's add a test which tests this:

```console
def test_find_path_no_route():
    # Arrange
    city_map = {
        'A': {'B': 24.0},
        'B': {'A': 24.0},
        'C': {'D': 12.0},
        'D': {'C': 12.0},
    }

    # Act/Assert
    with pytest.raises(ValueError):
        pathfinder.find_shortest_path(city_map, 'A', 'D')
```

4. Let's look at line 74 (the first missing line). This line only gets coverage if we give cities which don't exist. Add a similar test case like the one above that makes sure we get a `KeyError`.
5. Let's look at line 83 (the second missing line). This appears to be **unreachable code** (also called **"dead code"**), as the condition will never be satisfied (the heap property already guarantees this ordering). Let's remove this line and the condition which cannot be satisfied.
6. Make sure tests pass and you have 100% coverage reported by pytest.
7. Make sure flake8 still reports no warnings. If not, correct them.
8. Make sure mypy still reports no warnings. If not, correct them.
9. Commit and push your work to GitLab.


## [Optional] Mapping your Home Town



Have extra time? Create a map file with your home town and surrounding cities. You can use maps.google.com to find distances to the other cities. Run a few navigations and see how they work out.

Commit and add your home town as `hometown.txt` for one extra credit point.


## [Optional] Refactor unused parameter



Have extra time?

The `bidirectional` parameter to `find_shortest_path` is not used. Refactor this codebase to remove the parameter, including updating the main function and unit tests.


