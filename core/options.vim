"{ 

highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
set t_Co=256


" 开启鼠标模式
set mouse=a


" 关闭兼容模式
set nocompatible

" 命令行模式智能补全
set wildmenu

" 取消备份
set nobackup
set noswapfile

" 文件编码
set encoding=utf-8

" 查找
set ic
set hls
set is

" 显示行号
set nu
set rnu

" 显示光标当前位置
set ruler

" 禁止折行
set nowrap


" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4



" 定义快捷键的前缀，即<Leader>
let mapleader=";"
nmap <space> <leader>

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin indent on

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on



" 总是显示状态栏
set laststatus=2

" 左下角显示当前模式
set showmode

" 高亮显示当前行
set cursorline
" 高亮显示当前列
set cursorcolumn


" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"}