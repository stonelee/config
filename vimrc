" DesCription: 适合自己使用的vimrc文件，for Linux/Windows, GUI/Console
" Author: Stonelee - istonelee@gmail.com
" Blog: stonelee.info


" 关闭 vi 兼容模式
set nocompatible

" Vundle Config
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" 安装BundleInstall
Bundle 'gmarik/vundle'

" My Bundles here:

" grep的替代，文件夹里查找字符
" sudo apt-get install ack-grep
Bundle 'mileszs/ack.vim'

" 树
Bundle 'scrooloose/nerdtree'

" 多标签
Bundle 'minibufexpl.vim'
"Bundle 'fholgado/minibufexpl.vim'

" 增删改标签, 配合repeat.vim实现.重复操作。
" ds” 删除两端的”“
" dst 删除两端的标签
" cs”{ 将两端的“”改为{  } 有空格
" cs”} 将两端的“”改为{} 无空格
" cs'<q> 将'Hello world!'改为 <q>Hello world!</q>
" yss) 两端加上()
" ysiw） 将光标所在单词两端加上（）
" V可视化后,S然后<div>整行加div标签
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'

" 按快捷键<c-y>,来进行扩展
" html:5
" div#foo$*2>div.bar
" 更多用法：https://raw.github.com/mattn/zencoding-vim/master/TUTORIAL
Bundle 'mattn/zencoding-vim'
" 对%命令进行扩展使得能在嵌套标签和语句之间跳转
Bundle 'tsaleh/vim-matchit'

" 注释代码
" <leader>c<space> 注释/取消注释当前行
" <leader>cs 以”性感”的方式注释
" <leader>cA 在当前行尾添加注释符，并进入Insert模式
Bundle 'scrooloose/nerdcommenter'

" js格式规范化
Bundle 'hallettj/jslint.vim'
"Bundle 'jsbeautify'

Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'


" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Leader
let mapleader = ","

syntax on                   " 自动语法高亮
"set number                  " 显示行号
set relativenumber          " 显示相对行号
set cc=81                   " 代码不要超过80列
set cursorline              " 突出显示当前行
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4               " 设定 tab 长度为 4
"set autochdir               " 自动切换当前目录为当前文件所在的目录
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2             " 短暂跳转到匹配括号的时间
set magic                   " 显示括号配对情况
set ttyfast
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set smartindent             " 开启新行时使用智能自动缩进
set autoindent
set backspace=indent,eol,start
                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)

colorscheme desert
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\
                            " 设置在状态行显示的信息
" 显示Tab符
set listchars=tab:▸\ ,eol:¬
set list

" Security
set modelines=0

" Soft/hard wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

" Basic options
set ambiwidth=double
set scrolloff=3
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set mouse=a

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile
"set backup                        " enable backups
"set backupcopy=yes          " 设置备份时的行为为覆盖

" {{{ 编码字体设置
set encoding=utf-8
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936，OK
set ambiwidth=double
set guifont=YaHei\ Consolas\ Hybrid\ 10
" }}}

if has("gui_running")
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    "set showtabline=0 " 隐藏Tab栏
endif

if has("autocmd")
    " Save when losing focus
    autocmd FocusLost * :wa
    "保存自定义的折叠,会在进入帮助文件时报错，因此注释掉
    "autocmd BufWinLeave * mkview
    "autocmd BufWinEnter * silent loadview
    autocmd FileType * set noexpandtab  "一般文件不转换tab
    autocmd FileType python set expandtab  "python将tab变为空格
    autocmd FileType python map <F9> :!python %<cr> "运行python
endif

if has('unix')
    set fileformats=unix,dos,mac
    "set backupdir=~/.vim/tmp/backup/ " backups
    "set directory=~/.vim/tmp/swap/   " swap files
    let $VIMFILES = $HOME.'/.vim'
    "nmap <leader>ee :tabedit ~/.vimrc<cr>        "在新tab中快速打开.vimrc
    nmap <leader>ee :edit ~/.vimrc<cr>        "快速打开.vimrc
    autocmd! bufwritepost .vimrc source ~/.vimrc "自动更新

	" 最大化窗口
	"安装wmctrl： sudo apt-get install wmctrl
	"在 ~/.bashrc 中加上： alias gvim='gvim -c "call Maximize_Window()"'
	function! Maximize_Window()
	  silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
	endfunction

else
    set fileformats=dos,unix,mac
    let $VIMFILES = $VIM.'/vimfiles'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""key map"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
",w打开新的buffer
map <leader>w <C-w>v<C-w>l

"可以在自动断行内部移动
nnoremap j gj
nnoremap k gk

" Fuck you, help key.
map <F1> <ESC>

" Faster Esc
inoremap jj <ESC>

"fold
nnoremap <space> za
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

" Buffers操作快捷方式!
nmap <S-L> :bnext<CR>
nmap <S-H> :bprevious<CR>

" Tab操作快捷方式!
"nmap <S-J> :tabnext<CR>
"nmap <S-K> :tabprev<CR>

" 插入模式下左右移动光标
"imap <c-l> <esc>la
"imap <c-h> <esc>ha

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
nmap <leader>1 :set filetype=xhtml<CR>
nmap <leader>2 :set filetype=css<CR>
nmap <leader>3 :set filetype=javascript<CR>

" Searching
nnoremap / /\v
set gdefault
"括号跳转
nmap <tab> %

" {{{全文搜索选中的文字
" 向下搜索
:vmap <silent> <leader>f y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
" 向上搜索
:vmap <silent> <leader>F y?<c-r>=escape(@", '\\/.*$^~[]')<cr><cr>
" }}}

" 删除所有行末尾空格
nmap <F12> :%s/[ \t\r]\+$//g<CR>

" 扩展名为ashx使用csharp语法文件渲染
au BufRead,BufNewFile *.as[cph]x set filetype=cs
" json语法渲染
au BufRead,BufNewFile *.json set filetype=javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""" 插件 """"""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{ plugin - NERD_tree.vim 树形菜单
map <leader>e :NERDTreeToggle<cr>
let NERDTreeIgnore=['\~$', '.orig$','\.pyc$']
"}}}

" {{{ plugin - jsbeautify.vim 优化js代码，并不是简单的缩进，而是整个优化
" 开始优化整个文件
"autocmd FileType javascript nmap <silent> <leader>js :call g:Jsbeautify()<cr>
"nmap <silent> <leader>js :call g:Jsbeautify()<cr>
"}}}

" {{{ plugin - vim-jsbeautify 美化js,html,css代码

" set path to js-beautify file
let s:rootDir = fnamemodify(expand("<sfile>"), ":h")
let g:jsbeautify_file = fnameescape(s:rootDir."/.vim/bundle/js-beautify/beautify.js")
let g:htmlbeautify_file = fnameescape(s:rootDir."/.vim/bundle/js-beautify/beautify-html.js")
let g:cssbeautify_file = fnameescape(s:rootDir."/.vim/bundle/js-beautify/beautify-css.js")

"Configuration
let g:jsbeautify = {'indent_size': 1, 'indent_char': '\t'}
let g:htmlbeautify = {'indent_size': 4, 'indent_char': ' ', 'max_char': 78, 'brace_style': 'expand', 'unformatted': ['a', 'sub', 'sup', 'b', 'i', 'u']}
let g:cssbeautify = {'indent_size': 4, 'indent_char': ' '}

autocmd FileType javascript noremap <buffer> <leader>f :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>f :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""" 不用的插件 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{ plugin - translate.vim 翻译，需要python支持
nnoremap <leader>t :Trans<CR>
"}}}

" {{{ syntax - javascript.vim 更好的javascript折叠
"let javaScript_fold=1        "原来默认的javascript折叠
"}}}

" {{{ plugin - taglist-plus.vim 据说可以同时使用ctags和jsctags生成的tags
"jsctags是针对js语法过于灵活的问题而开发的，需要node.js
"参见 http://www.discontinuously.com/2011/03/vim-support-javascript-taglist-plus/
map <leader>g :TlistToggle<CR>
"}}}

" {{{ plugin - css_color 将css文件中的颜色表现出来
"}}}

" {{{ plugin - css_folding 收缩时将css折成一行
"}}}
"
" {{{ plugin - Better-CSS-Syntax-for-Vim css3，html5着色
"}}}

" {{{ plugin - html_validate 使用http://validator.nu来验证html
autocmd FileType html,xhtml nmap <F9> :make<cr><cr>:copen<cr>
"}}}

" {{{ plugin - vim-coffee-script CoffeeScript插件,更好的js
" https://github.com/kchmck/vim-coffee-script

"自动编译为相应的js文件,有错误的话会报告
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow
"按缩进折叠
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent  nofoldenable
"纵向分栏
let coffee_compile_vert = 1

vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
"两窗口预览
map <leader>cw :CoffeeCompile watch vert<CR>
"}}}

"python文件按缩进折叠
au BufNewFile,BufReadPost *.py setl foldmethod=indent  nofoldenable
