# Linux commands

Try also this website: [http://explainshell.com/](http://explainshell.com/)

## Help

|Command|Example|Comment|
|--------|---|---|
|man `<command>`|man cd<br />man ls|**Manual** <br> Get help (close with q)|
|`<command>` --help|cd --help|Also **help**|
|<kbd>Tab</kbd> (1x or 2x) |&nbsp; |Auto completion|
|<kbd>↑</kbd>|&nbsp;|See previous command|
|<kbd>Ctrl</kbd>+<kbd>c</kbd>|&nbsp;|Kill the current process or command (e.g. if something hangs)|
|`history`|&nbsp;|Display all the past commands|
|<kbd>Ctrl</kbd>+<kbd>r</kbd>|&nbsp;|Search through your history. Start typing and it will auto-complete. Hit <kbd>Ctrl</kbd>+<kbd>r</kbd> again and it will cycle though the other auto-completion options. Hit <kbd>Enter</kbd> and the command will execute. Hit <kbd>←</kbd>,<kbd>→</kbd> to edit commands.


## Basic

|Command|Example|Comment|
|---|---|---|
|cd `<foldername>`|cd test <br> cd .. <br> cd ~ <br> cd /path/to/my/folder | **Change directory** <br>. (dot) is the current directory <br> .. (dotdot) is the upper/partent directory <br> / (slash) is the root directory <br> ~ (tilde) is your home directory |
|ls <br> ls `<options>` <br> ls `<foldername>` <br> ls `<pattern>` | ls <br> ls -la <br> ls -l -a (same as above) <br> ls -halt (more arguments) <br> ls -d */ (list all directories) <br> ls test (contents of subfolder) <br> ls *.sas (show only .sas files) | **List** contents of a folder <br> -h human readable <br> -a all <br> -l more information <br> -t order by time |
|pwd | | **Print working directory** <br> shows the current path|
|clear| | **Clear** the console <br>gives you a fresh view|
|mkdir `<foldername>` |mkdir test | **Make directory** <br> creates a new folder with the given name|
|chmod <permissions> <foldername>|chmod 777 test|**Change permissions** <br> for file <br> 777 gives the folder all possible rights |
|mv  `<source>` `<target>` | mv text.txt test <br> mv test.txt bla.txt |**Move** a file <br> Can also be used for renaming (second example)|
|cp `<source>` `<target>`| cp text.txt test <br> cp -p text.txt test | **Copy** a file <br> -p preserves mode, ownership, and timestamps<br> Can also rename. |
|rm `<filename>` <br> rm -rf `<foldername>`|rm text.txt <br> rm -rf test  <br> rm \*.tmp (removes all files with file ending \*.tmp)| **Remove** <br> *warning: cannot be undone!* <br> -f force, no confirmation<br> dialog, no warnings <br> -r recursive, for folders |
|sudo `<command>`| sudo ls | **super user do** <br> Run a command with elevated privleges. Will ask you for a password. Only possible, if you were granted administrative rights on the system.

## Advanced
|Command|Example|Comment|
|---|---|---|
|less `<filename>` | less text.txt | **display contents** <br> of a file, read-only <br> <kbd>h</kbd> help <br> <kbd>q</kbd> close<br> <kbd>f</kbd>,<kbd>b</kbd> forward, backward one page <br> <kbd>e</kbd>,<kbd>y</kbd> forward, backward single line <br>/`<word>` search <br> <kbd>n</kbd>,<kbd>p</kbd> next, previous `<word>` during search <br> -i activate case insentitive search |
| `<command>` &#124; less| history  &#124; less <br> ls  &#124; less | **pipe** <br> the output of a command to less. <br> Especially useful for history command (displays the latest commands) or folders with many files in them (last example) |
| `<command>` > `<filename>` <br> `<command>` >> `<filename>` | ls -a > result.txt <br> ls -a >> result.txt | **redirect** <br> the output of a command into a file <br> > creates/overwrites a file <br> >> creates/appends to a file |
|ssh `<server>` <br> ssh -t `<server>` "`<command>`" | ssh `username@example.com` <br> ssh -t `username@example.com` "ls -a" | **secure shell** <br> Connect to a server <br> -t Close connection immediately after the command is done |
|exit | | Quit server connection |
|scp `<source>` `<target>` | `scp username@example.com:/my/folder/*.txt .` | **secure copy**  <br> files from/to a server <br> -r recursive (include subfolders)<br> The example copies all files from the given directory then end in .txt to the local directory (dot) |
|nano `<filename>` | nano text.txt | **file editor** <br> <kbd>Ctrl</kbd>+<kbd>x</kbd> to close <br> <kbd>Alt</kbd>+<kbd>/</kbd> to go to the end of a file |


## Lesser used
|Command|Example|Comment|
|---|---|---|
|su `<username>`| su root | **switch user** |
|touch `<filename>` | touch text.txt <br> touch makefile | **touch** a file. Creates a new, empty file if the file does not already exist. Especially helpful to create makefiles under Windows. Actually the command is used for changing file timestamps. |
|stat `<filename>` | stat text.txt | Display file status, creation date, last modification date, etc. |
|du `<directory>` | du -s . <br> du -sh . | **disk usage** <br> -s summary <br> -h human readable |

## SAS specific
|Command|Example|Comment|
|---|---|---|
|qbs `<sasfile>` | qbs test.sas <br> qbs -q s -o disksize=30G test.sas | Submit a SAS file to the server <br> -q s short queue  <br> -q m medium queue  <br> -q l long queue  <br> -o ... other options.  <br> Will print a job number.|
|qdel `<job number>` <br> qdel -u `<username>` | qdel 4711 <br> qdel -u user | Kill SAS job <br> Kill all jobs of a certain user |
|qstat| |View your running programs |

## Permissions

Type `chmod xxx <filename>` to change permissions where `xxx` is the numerical code from the table below.

```
Explaination of the Codes: . ... ... ...
                           (type) (user persmissions) (group permissions) (world permissions)
```
The first item can be `d` (a directory), `-` (a regular file) or `l` (a symbolic link).  
The following three triplets specify permissons for the `user`, `group` and `world` in that order.  
In each tripplet, permissions can be `r` (read), `w` (write), `x` (execute) or `-` (not assigned).  
Setting permissions can be done via numbers: `r=4`, `w=2`, `x=1` and `-=0`.  

|Setting|Code|Use Case|
|---|---|---|
|`----------`|000|Locking even yourself out. Use `chmod` again, if this happens. |
|`-r--------`|400|An auto-generated password file (e.g. `~/.google_authenticator`). |
|`-rw-------`|600|`~/.history`, all the ssh keys in your `~/.ssh` folder.|
|`-rwx------`|700|Your `~/.ssh` folder.|
|`-r--r--r--`|444|A textfile, that others should see as well, but nobody should modify it.|
|`-r-xr-xr-x`|555|A folder, that others should be able to `cd` into as well, but nobody should modify it.|
|`-rwxr-xr-x`|755|Files and folders you want other people to *see*. |
|`-rwxrwxrwx`|777|Files and folders you want other people to *see and modify*. The most open permission.|

Permissions on directory have the following meaning:  
The read bit allows to list the files within the directory.  
The write bit allows to create, rename, or delete files within the directory, and modify the directory's attributes.  
The execute bit allows to enter the directory, and access files and directories inside.  

To view permissions as numerical code: `stat -c %a <filename>`.
