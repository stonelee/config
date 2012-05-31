# my config

命令行配置

```
$ ln bashrc ~/.bashrc
$ ln inputrc ~/.inputrc
```

配置nginx映射：

```
$ ln nginx.conf /etc/nginx/nginx.conf
```

nginx/index.html为自定义首页

更改mysql编码为utf8：

```
$ ln mysql/my.cnf /etc/my.cnf
```

## vim

编译vim

```
$ hg clone https://vim.googlecode.com/hg/ vim
$ cd vim/src

$ ln vim-build.sh ~/libs/vim/src/
```

配置vim

```
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
$ ln vimrc ~/.vimrc
```

vim插件jslint的配置文件

```
$ ln jslintrc ~/.jslintrc
```

