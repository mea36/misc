#
# This script runs for login shells 
#

PATH=${PATH}:.	# add current working directory, cwd, to path
export PATH

# Make sure paths, etc. are set up first, then
if [ -f ~/.bashrc ]; then 
	. ~/.bashrc
fi

# Try to determine the type of terminal
# If you will be using a dialup terminal, then replace the 'vt100' in the next
# line with the appropriate terminal name.
# If the terminal you usually use isn't a vt100,  change the 'vt100's below.
defaultterm=vt100
if [ -r /usr/local/etc/termsetup.sh ]; then
    . /usr/local/etc/termsetup.sh
fi

# If you ssh in from cygwin, 'cygwin' is the terminal type.
# tux doesn't know what that is, and ansi works fine for me
if [ ${TERM} = 'cygwin' ] ; then
	export TERM='xterm'
fi

# more may need to be done here, but this usually gets the behvior I like
# if [ -x /sbin/stty ]; then
#     /sbin/stty erase "^h" intr "^C"
# else
#     stty erase "^h" intr "^C"
# fi

# Set the default X server.
# if DISPLAY is not set, the if is true:
if [ ${DISPLAY:-setdisplay} = setdisplay ]; then
# if REMOTEHOST is set, the if is true:
    if [ ${REMOTEHOST:-islocal} != islocal ]; then
	DISPLAY=${REMOTEHOST}:0.0
    else
	DISPLAY=${HOSTNAME}:0.0
    fi
    export DISPLAY 
fi

# prompt is set in .bashrc


##
# Your previous /Users/melissaaaron/.bash_profile file was backed up as /Users/melissaaaron/.bash_profile.macports-saved_2009-07-14_at_01:18:49
##

# MacPorts Installer addition on 2009-07-14_at_01:18:49: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-07-14_at_01:18:49: adding an appropriate DISPLAY variable for use with MacPorts.
export DISPLAY=:0
# Finished adapting your DISPLAY environment variable for use with MacPorts.


##
# Your previous /Users/melissaaaron/.bash_profile file was backed up as /Users/melissaaaron/.bash_profile.macports-saved_2010-03-04_at_22:34:29
##

# MacPorts Installer addition on 2010-03-04_at_22:34:29: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH
