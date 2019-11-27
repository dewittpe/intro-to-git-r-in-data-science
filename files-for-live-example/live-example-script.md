# Live Example Script

Showing basic use of git.  The focus is on local use and for a simple R project
in RStudio.  The point is to provide a meaningful example to a "R in Data
Science" course.

## System Dependencies:

* R
* If on Windows Rtools
* git
* RStudio

## The Script

### Install Git
* Show website: https://git-scm.com/
* Install if needed, but assume git is already installed on the computer

### Global Config

* Show the ~/.gitconfig file
* Show how to configure

    git config --global user.name "firstname lastname"
    git config --global user.email "firstname.lastname@institution.xxx"

* Note that this file can be copied over to other systems, with caution.

### Create a Project in RStuido
* Open RStudio
* create project : call it "enrollment"
* create README.md
* initialize the git repository
  * show that a .git directory is added to the project directory
  * show git status
* stage the README.md file

    git add README.md

* Make a small edit to README.md
  * Show that there is a modified version of the README.md
  * Undo the edit and show that there is no modified version
  * Note the difference between the asynchronous version control and a
    synchronous tools such as Dropbox.

* Commit the README.md file

* show status of the repo

### Add data set
* copy data set
* stage and commit with a good message

### Start the initial analysis script
