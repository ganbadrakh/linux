# Linux commands

## Help

|Command|Example|Comment|
|---|---|---|
|man `<command>`|man cd<br />man ls|**Manual** Get help (close with q)|
|`<command>` --help|cd --help|Also **help**|
|<kbd>Tab</kbd> (1x or 2x) |&nbsp; |Auto completion|
|<kbd>↑</kbd>|&nbsp;|See previous command|
|<kbd>Ctrl</kbd>+<kbd>c</kbd>|&nbsp;|Kill the current process or command (eg. if something hangs)|


## Basic

|Command|Example|Comment|
|---|---|---|
|cd `<foldername>`|cd test <br> cd .. <br> cd ~ <br> cd /path/to/my/folder | **Change directory** <br>. (dot) is the current directory <br> .. (dotdot) is the upper/partent directory <br> / (slash) is the root directory <br> ~ (tilde) is your home directory |
|ls <br> ls `<options>` <br> ls `<foldername>` <br> ls `<pattern>` | ls <br> ls -la <br> ls -l -a (same as above) <br> ls -halt (more arguments) <br> ls -d */ (list all directories) <br> ls test (contents of subfolder) <br> ls *.sas (show only .sas files) | **List** contents of a folder <br> -h human readable <br> -a all <br> -l more information <br> -t order by time |
|pwd | | **Print working directory** <br> shows the current path|
|clear| | **Clear** the console <br>gives you a fresh view|
|mkdir `<foldername>` |mkdir test | **Make directory** <br> creates a new folder with the given name|
|chmod <permissions> <foldername>|chmod 777 test|**Change permissions** <br> for file <br> 777 gives the folder all possible rights |
|cp `<source>` `<target>` <br> mv  `<source>` `<target>` | cp text.txt test <br> mv text.txt test <br> mv test.txt bla.txt|**Copy, Move** a file <br> mv can also be used to<br> rename a file (last example)|
|rm `<filename>` <br> rm -rf `<foldername>`|rm text.txt <br> rm -rf test  <br> rm \*.tmp (removes all files with file ending \*.tmp)| **Remove** <br> *warning: cannot be undone!* <br> -f force, no confirmation<br> dialog, no warnings <br> -r recursive, for folders |

## Advanced
|Command|Example|Comment|
|---|---|---|
|less `<filename>` | less text.txt | **display contents** <br> of a file, read-only <br> <kbd>h</kbd> help <br> <kbd>q</kbd> close<br> <kbd>f</kbd>,<kbd>b</kbd> forward, backward one page <br> <kbd>e</kbd>,<kbd>y</kbd> forward, backward single line <br>/`<word>` search <br> <kbd>n</kbd>,<kbd>p</kbd> next, previous `<word>` during search <br> -i activate case insentitive search |
| `<command>` &#124; less| history  &#124; less <br> ls  &#124; less | **pipe** <br> the output of a command to less. <br> Especially useful for history command (displays the latest commands) or folders with many files in them (last example) |
| `<command>` > `<filename>` <br> `<command>` >> `<filename>` | ls -a > result.txt <br> ls -a >> result.txt | **redirect** <br> the output of a command into a file <br> > creates/overwrites a file <br> >> creates/appends to a file |
|ssh `<server>` | `ssh username@example.com` | **secure shell** <br> Connect to a server |
|exit | | Quit server connection|
|scp `<source>` `<target>` | `scp username@example.com:/my/folder/*.txt .` | **secure copy**  <br> files from/to a server <br> -r recursive (include subfolders)<br> The example copies all files from the given directory then end in .txt to the local directory (dot) |
|nano `<filename>` | nano text.txt | **file editor** <br> <kbd>Ctrl</kbd>+<kbd>x</kbd> to close |

## SAS specific
|Command|Example|Comment|
|---|---|---|
|qbs `<sasfile>` | qbs test.sas <br> qbs -q s -o disksize=30G test.sas | Submit a SAS file to the server <br> -q s short queue  <br> -q m medium queue  <br> -q l long queue  <br> -o ... other options.  <br> Will print a job number.|
|qdel `<job number>` <br> qdel -u `<username>` | qdel 4711 <br> qdel -u user | Kill SAS job <br> Kill all jobs of a certain user |
|qstat| |View your running programs |
