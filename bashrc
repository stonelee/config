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

alias you='cd ~/workspace/ots.you/src/main/webapp/WEB-INF/resources/scripts/kjquery/demo/'

alias gvim='gvim -c "call Maximize_Window()"'

export PATH=/home/stonelee/.npm/docco/0.3.0/package/bin:$PATH
export PATH=/home/stonelee/.npm/coffee-script/1.3.3/package/bin:$PATH

alias proxy='python ~/bin/goagent/local/proxy.py >& /dev/null &'

