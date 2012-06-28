function gvim
	gvim -c "call Maximize_Window()" $argv
end;

set -x PATH $PATH $HOME/.rvm/bin # Add RVM to PATH for scripting
set -x PATH /home/stonelee/.npm/docco/0.3.0/package/bin $PATH
set -x PATH /home/stonelee/.npm/coffee-script/1.3.3/package/bin $PATH

function xmind
	~/bin/xmind-portable-3.2.1.201011212218/XMind_Linux_64bit/xmind  >&- ^&1
end;

function chrome
	google-chrome
end;

function proxy
	python ~/bin/goagent/local/proxy.py >&- ^&1
end;

function py
	source ~/ENV/bin/activate
end;

function you
	cd ~/workspace/ots.you/src/main/webapp/WEB-INF/resources/scripts/kjquery/demo/
end;

