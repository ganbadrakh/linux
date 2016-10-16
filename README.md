
### Create SSH Key

ssh-keygen -t rsa -b 4096 -N "" -C "bla@bla.com" -f id_keyname

chmod 700 ~/.ssh && chmod 600 ~/.ssh/*


Host github
HostName github.com
User git
IdentityFile ~/.ssh/id_keyname

