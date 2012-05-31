#防止缓存
make distclean
./configure --with-features=huge --enable-gui=gnome2 --enable-cscope  --enable-fontset --enable-multibyte --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config
make
