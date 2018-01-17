

## Installing helpful tools under Ubuntu

```bash
sudo apt-get update
sudo apt install -y gcc htop iotop make pydf unzip zip
```
```bash
sudo apt install -y mysql-server
mysql_secure_installation
```

## Installing Python Anaconda

1. Go to [https://www.anaconda.com/download/](https://www.anaconda.com/download/) and remember the current version number.
2. `curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh`
3. `bash Anaconda3-5.0.1-Linux-x86_64.sh`
4. `source ~/.bashrc`

More information: [link](https://www.digitalocean.com/community/tutorials/how-to-install-the-anaconda-python-distribution-on-ubuntu-16-04)

Telling cygwin about Anaconda
1. `echo 'export PATH=/cygdrive/c/Users/<username>/AppData/Local/Continuum/anaconda3:$PATH' >> ~/.bash_profile`
    * Use single quotes!
2. `source ~/.bash_profile`
3. `which python`

Installing Python 2.7 and packages
1. `conda create -n py27 python=2.7`
2. `activate py27` or `source activate py27`
3. `pip install csvsort`
4. `deactivate` or `source deactivate`
