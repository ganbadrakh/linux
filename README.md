
### Grep

    grep
        # -i ignore case
        # -n show line numbers
        # -R recursive (sometimes not available!)
        # -I ignore binary files
        # -l print out file names instead
        # -P Perl syntax \d \w \s
        # -E extended syntax [[:digit:]] [[:alpha:]] [[:space:]]
        # {2} exactly, {1,3} from to, {2,} two or more
        # --include="*.txt" search only in .txt files

    # Search in all .php files recursively
    grep -inRI "needle" --include="*.php"

    # Seach in subdirectories beginning with abc (if -R is not available)
    ls -R abc* | grep "needle" --include="*.txt" > ~/grepoutput.txt

    # Search in .sas files (if -R is not available)
    find . -type f -name "*.sas" | xargs grep -li 'needle' > ~/grepoutput.txt

#### Ripgrep

Alternative, that is also available for windows: [Ripgrep](https://github.com/BurntSushi/ripgrep).


### Create SSH Key

    # Creating
    ssh-keygen -t rsa -b 4096 -N "" -C "bla@bla.com" -f id_keyname

    # Setting access rights
    chmod 700 ~/.ssh && chmod 600 ~/.ssh/*

    # ~/.ssh/config
    Host github
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_keyname


