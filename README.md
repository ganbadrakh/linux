
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
