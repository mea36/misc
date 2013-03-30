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
export LSCOLORS=fxfxcxdxbxegedabagacad #changed dir color from blue to magenta `man ls` for details
alias r="fc -s"
alias h="history"
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
#alias rm="rm -i"
#alias mv="mv -i"
#alias cp="cp -i"

# set prompt, though maybe already done in /etc/bashrc
#		see man or info pages for special characters (\u, etc.)
#export PS1="\u@\h \W $ "
export PS1="\W $ "

#env variables
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PYTHONPATH='/usr/bin/python'
export SVN_EDITOR=vim
export STACK=dev
export WORKON_HOME=~/envs
if [ -f bash_custom ]; then
 . bash_custom
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
