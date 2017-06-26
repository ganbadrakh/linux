
## Everyday tasks

### Git
```bash
# Add all files to change set, commit and push the change set
git add -A
git commit -m "got stuff done"
git push
# Display tags, along with their message
git tag -n9
# Check, if the current commit already has a tag
git tag -l --points-at HEAD
# Create and push tags
git tag -a v0.8 -m "got stuff done"
git push --tags
# Revert unstaged changes of a file
git checkout path/to/file/to/revert
# Revert all unstaged changes (period at the end is important)
git checkout -- .
```


### Grep
```bash
grep
    # search within files
    # syntax: grep <options> <search-term> <filename>
    #
    # -i ignore case
    # -n show line numbers
    # -R recursive (sometimes not available!)
    # -I ignore binary files
    # -l print out file names instead
    # -P Perl syntax \d \w \s
    # -E extended syntax [[:digit:]] [[:alpha:]] [[:space:]]
    # {2} exactly, {1,3} from to, {2,} two or more
    # --include="*.txt" search only in .txt files
find
    # find files or directories based on name 
    # syntax: find <location> <options>
    #
    # -type f=search only files, d=search only directories
    # -name name
    # -iname caseinsensitive name


## Search in files
# Search in files of current directory, ignore case, print filenames only
grep -li 'needle' *

# Search in files of all subdirectories, hide error messages
find . -type f -name "*.sas" -exec grep -li 'needle' {} +


## Search in filenames
# Search in filenames in all subdirectories
find . -type d -name 'needle'
```

More examples:  
find | [ex1](http://www.binarytides.com/linux-find-command-examples/), [ex2](https://en.wikibooks.org/wiki/Guide_to_Unix/Commands/Finding_Files)  
grep | [ex1](http://www.robelle.com/smugbook/regexpr.html), [ex2](http://marvin.cs.uidaho.edu/Teaching/CS445/regex.html)

### Python

Multiple python versions
```bash
$ python --version
Python 3.6.0
$ py -3.5 --version
Python 3.5.2
$ py -3.5 -m pip install sqlalchemy # installs a package for python 3.5
```

### Create SSH Key
```bash
# Creating
ssh-keygen -t rsa -b 4096 -N "" -C "bla@bla.com" -f id_keyname

# Setting access rights
chmod 700 ~/.ssh && chmod 600 ~/.ssh/*

# ~/.ssh/config
Host github
HostName github.com
User git
IdentityFile ~/.ssh/id_keyname
```

## Misc

<details>
<summary>Cygwin packages to install</summary>

Packages to install:

+ nano
+ wget
+ make
+ openssh
+ git
+ curl
+ chere ("console here" = context menu integration. after installation, run cygwin as admin and type 'chere -i -t mintty')
+ bash-completion (adds autocompletion for makefiles)

</details>

<details>
<summary>Add new user on a linux server</summary>

### Add new user on server

*Create user*  

    useradd username
    passwd username

*Add this line to .bashrc*  

    export LANG=en_US.utf8

*Create directory in /share*  

    mkdir /share/username
    chmod 755 /share/username
    chmod +t /share/username
    chown username:username /share/username

</details>

<details>
<summary>SourceTree Setup under Windows</summary>

### Add SSH key in SourceTree

1.  Add/modify key in SourceTree

    Save in folder on hard drive
    Rename it to .ppk
    Import it via Tools -> Import...
    Save it again, overwriting the old key

1. Import it again in the SSH Agent
    
    Right click in the taskbar, Add key

1. Open a regular console (cmd.exe)

    "C:\Program Files (x86)\Atlassian\SourceTree\tools\putty\plink.exe" example.com
    Then press 'y'
    Then enter git (if asked for Login as:)

1. In SourceTree add repo:
    
    git@example.com:my_repo.git

1. Add user name and email
    Go to "Terminal" in SourceTree and enter
        git config --global user.email "you@example.com"
        git config --global user.name "Your Name"

</details>

## Tools

+ [Ripgrep](https://github.com/BurntSushi/ripgrep) - Search tool, alternative to grep
+ [slap](https://github.com/slap-editor/slap) - Sublime-like terminal-based text editor
+ [OmniDB](https://github.com/OmniDB/OmniDB) - Convert databases
