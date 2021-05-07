---
id: 01a-cloud-shell
summary: Setup Google Cloud Shell for developing Python applications.
authors: Tim Swast

---

# Using Cloud Shell with Python




## Overview



In this codelab, you'll setup  [Google Cloud Shell](https://cloud.google.com/shell) for developing Python applications. Cloud Shell provides a  [Debian Linux command-line environment](https://cloud.google.com/shell/docs/how-cloud-shell-works) as well as an online code editor.

### What you'll need

* Google account
* Web browser (Google Chrome recommended)

### What you'll learn

* Run Cloud Shell
* Create a Python virtual environment
* Edit files with Cloud Shell Editor
* Install Python packages to a virtual environment


## Open Cloud Shell



1. Navigate to the Google Cloud Console:  [https://console.cloud.google.com/](https://console.cloud.google.com/)

Accept any terms of service that appear.
2. Click the Cloud Shell icon on the top of the screen.  <img src="img/57863b7d6eb4521.png" alt="57863b7d6eb4521.png"  width="41.00" /> <img src="img/e08d2f6c861f00ec.png" alt="e08d2f6c861f00ec.png"  width="624.00" />
3. Click the Continue button if it appears to activate Cloud Shell. <img src="img/86df2418057af2f4.png" alt="86df2418057af2f4.png"  width="624.00" />


## Create a Python 3 virtual environment



To isolate our Python environment from the system Python, create a virtual environment.

1. Create a directory to hold virtual environment files. Paste this command into the Cloud Shell and press Enter to execute it.

```
mkdir ~/venvs
```

2. Create a virtual environment called "dev".

```
python3 -m venv venvs/dev
```

3. Edit the .bashrc file so that our virtual environment is used by default when you open Cloud Shell.

```
echo '
source "$HOME/venvs/dev/bin/activate"
' >> "$HOME/.bashrc"
```

The "echo" command prints text, and the ">>" command appends that text to the file.

4. Activate your virtual environment by loading the configuration you just created.

```
source .bashrc
```

Now when you open Cloud Shell, you should see "(dev)", which indicates you are using the virtual environment you just created.

5. Verify the Python binary is the one from the virtual environment by using the "which" command.

```
which python
```


If you have successfully activated the virtual environment, you should see an output like "/home/USERNAME/venvs/dev/bin/python".


## Open Cloud Shell Editor



In addition to a command-line interface, Cloud Shell provides a graphical code editor.

1. Click the square button  <img src="img/3acf8536387fbe43.png" alt="3acf8536387fbe43.png"  width="51.00" /> to open Cloud Shell in a new window.  <img src="img/a309af8d7b168272.png" alt="a309af8d7b168272.png"  width="624.00" />
2. In the new window click the pencil button  <img src="img/7f0acdee10f9b573.png" alt="7f0acdee10f9b573.png"  width="44.00" /> to open the code editor. <img src="img/9a57e73ac59e4cf1.png" alt="9a57e73ac59e4cf1.png"  width="624.00" />


## Open a working directory



In order to edit files, Cloud Shell Editor needs a working directory. Opening a working directory allows you to browse any files contained within it and provides a starting directory for any command-line terminals started by the editor.

1. Click the files button  <img src="img/cc6cd6d7604bd26a.png" alt="cc6cd6d7604bd26a.png"  width="38.00" /> to open the files pane.
<img src="img/d61bd383c0051faf.png" alt="d61bd383c0051faf.png"  width="624.00" />
2. Click the "Open Folder" button to select a folder.
<img src="img/e48f15462b728f23.png" alt="e48f15462b728f23.png"  width="576.00" />
3. Usually, a you would select a sub-directory corresponding to the project you're working on. Today, select the folder corresponding to your username. This is your "home" directory. Any files created here or in sub-directories are persisted across Cloud Shell sessions.
<img src="img/3583a14485354329.png" alt="3583a14485354329.png"  width="536.00" />

4. Click the "Open" button once you have selected the directory. You should now see a listing of files in the editor.
<img src="img/17d052b8b06e534d.png" alt="17d052b8b06e534d.png"  width="624.00" />


## Create a requirements.txt file



Use Cloud Shell Editor to create a text file containing a list of Python packages you'll use in this course.

1. Select File -> New File from the menu.
<img src="img/cf208297fa71b9aa.png" alt="cf208297fa71b9aa.png"  width="527.00" />
2. Enter "requirements.txt" as the file name.
<img src="img/31638baf45092443.png" alt="31638baf45092443.png"  width="624.00" />

3. Click the OK button to create the file.
4. Select the file to open it.
<img src="img/2ca44612f58a4ac1.png" alt="2ca44612f58a4ac1.png"  width="624.00" />
5. Paste in the list Python packages you'll be using in this course.

```
appdirs==1.4.4
astroid==2.5.6
attrs==20.3.0
black==21.4b2
cfgv==3.2.0
click==7.1.2
coverage==5.5
distlib==0.3.1
filelock==3.0.12
flake8==3.9.1
Flask==1.1.2
identify==2.2.4
importlib-metadata==4.0.1
iniconfig==1.1.1
isort==5.8.0
itsdangerous==1.1.0
Jinja2==2.11.3
lazy-object-proxy==1.6.0
MarkupSafe==1.1.1
mccabe==0.6.1
mypy-extensions==0.4.3
nodeenv==1.6.0
packaging==20.9
pathspec==0.8.1
pluggy==0.13.1
pre-commit==2.12.1
py==1.10.0
pycodestyle==2.7.0
pyfakefs==4.4.0
pyflakes==2.3.1
pylint==2.8.2
pyparsing==2.4.7
pytest==6.2.3
pytest-cov==2.11.1
PyYAML==5.4.1
regex==2021.4.4
six==1.16.0
toml==0.10.2
typed-ast==1.4.3
typing-extensions==3.10.0.0
virtualenv==20.4.5
Werkzeug==1.0.1
zipp==3.4.1
```

6. Save the file.
<img src="img/23914679199a1237.png" alt="23914679199a1237.png"  width="624.00" />


## Open Cloud Shell Editor Terminal



In addition to the Cloud Shell command-line, the Cloud Shell Editor comes with a command-line terminal. Using this terminal ensures that you are in the correct directory. It also enables useful features such as links to source code files from test output, which we will see in a later codelab.

1. Open a command-line terminal from Cloud Shell Editor by clicking the Terminal -> New Terminal menu button.
<img src="img/3059183521aa1184.png" alt="3059183521aa1184.png"  width="624.00" />

You should see a terminal pane at the bottom of your window.
<img src="img/66b1f8ddf3e4bc48.png" alt="66b1f8ddf3e4bc48.png"  width="624.00" />
2. Verify the Python binary is the one from the virtual environment by using the "which" command.

```
which python
```

If you have successfully activated the virtual environment, you should see an output like "/home/USERNAME/venvs/dev/bin/python".

3. Run the "ls" command to list the files in the current directory.

```
ls
```


Verify that the "requirements.txt" file appears in the list.


## Install Python packages



Finally, add the Python packages that you'll use in this course to the virtual environment.

1. Install the packages from the "requirements.txt" file into your virtual environment by running the "pip" command.

```
pip install -r requirements.txt
```

2. From the command-line verify that the packages were installed successfully. Use the "-c" option for Python to run a short one-line program to verify that Flask was installed.

```
python -c 'import flask; print(flask.__version__)'
```


You should see "1.1.2" printed to the command-line output.


