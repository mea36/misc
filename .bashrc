# .bashrc

# User specific aliases and functions

# Add whatever you want to see after logging in here.

# Specify that ^D won't log you out.
set -o ignoreeof 

# make vi the command-line editor
# comment out to use emacs mode (the default)
set -o vi

# Uncomment to deny `talk' and `write' requests
# mesg n

alias l="ls -CF"
if [[ `uname -s` = "Linux" ]] ; then
	alias ls="ls --color=auto"
fi
alias ls="ls -G"
alias r="fc -s"
alias h="history"
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
#alias rm="rm -i"
#alias mv="mv -i"
#alias cp="cp -i"

# set prompt, though maybe already done in /etc/bashrc
#		see man or info pages for special characters (\u, etc.)
export PS1="\u@\h \W $ "

#env variables?
#PATH=$PATH:/Users/melissaaaron/Documents/Drexel/543/mips-dec-ultrix4.2/:/usr/local/apache-maven-2.2.0/bin:/opt/subversion/bin:/Users/melissaaaron/Documents/Drexel/year5/cs675/rse/lab4/src:/Users/melissaaaron/Document/Drexel/year5/winter10/asna/pyfacebook/bin:/usr/local/mysql/bin:/Applications/Django-1.1.1/django:/Library/PostgreSQL/9.1/bin; export PATH
PATH=$PATH:/usr/local/apache-maven-2.2.0/bin:/opt/subversion/bin:/usr/local/mysql/bin:/Applications/Django-1.1.1/django:/Library/PostgreSQL/9.1/bin; export PATH
export ARCHDIR=/Users/melissaaaron/Documents/Drexel/543/mips-dec-ultrix4.2
export JAVA_HOME=/Library/Java/Home;
export MAVEN_OPTS=-Xmx1g
export PYTHONPATH=$HOME/Document/Drexel/year5/asna/pyfacebook
export SVN_EDITOR=vim
export STACK=dev-mel
if [ -f bash_custom ]; then
 . bash_custom
fiif [ -f /Users/melissaaaron/Source/mynameisfiber-Shell-Config-cbe20ab/bash_custom ]; then
  . /Users/melissaaaron/Source/mynameisfiber-Shell-Config-cbe20ab/bash_custom 
fi