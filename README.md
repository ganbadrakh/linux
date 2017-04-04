
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
    # syntax: find <location> <comparison-criteria> <search-term>
    #
    # -type f=search only files, d=search only directories
    # -name name


# Search in all .php files recursively
grep -inRI "needle" --include="*.php"

# Search in immediate subdirectories for files starting with 'needle'
ls */ | grep "needle*"
# Seach in subdirectories starting with 'abc' for files starting with 'needle' (if grep -R is not available)
ls -R abc* | grep "needle" --include="*.txt" > ~/grepoutput.txt


# Search in .sas files (if -R is not available)
find . -type f -name "*.sas" | xargs grep -li 'needle' > ~/grepoutput.txt
```

More examples:  
[find](http://www.binarytides.com/linux-find-command-examples/)  
[grep](http://www.robelle.com/smugbook/regexpr.html), [grep](http://marvin.cs.uidaho.edu/Teaching/CS445/regex.html)


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

## Remember these tools

<details>
<summary>Ripgrep</summary>

Alternative, that is also available for windows: [Ripgrep](https://github.com/BurntSushi/ripgrep).

    # Search in .sas files
    rg needle -g "*.sas"

</details>

## Other tasks

### Linux

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

### Windows

<details>
<summary>SourceTree Setup</summary>

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

<details>
<summary>Cygwin</summary>

Packages to install:

+ nano
+ make
+ openssh
+ git
+ python3
+ chere ("console here" = context menu integration. after installation, run cygwin as admin and type 'chere -i -t mintty')


</details>
