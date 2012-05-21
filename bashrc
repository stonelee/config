# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#colord bash
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Added by autojump install.sh
source /etc/profile.d/autojump.bash

alias xmind='~/bin/xmind-portable-3.2.1.201011212218/XMind_Linux_64bit/xmind 2>&1 &'
alias chrome='google-chrome'
alias py='source ~/ENV/bin/activate'

export PATH=/home/stonelee/bin/SenchaSDKTools-1.2.3:$PATH

export PATH=/home/stonelee/bin/SenchaSDKTools-1.2.3/command:$PATH

export PATH=/home/stonelee/bin/SenchaSDKTools-1.2.3/jsbuilder:$PATH

export PATH=/home/stonelee/bin/SenchaSDKTools-1.2.3/appbuilder:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
