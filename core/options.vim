"{ 


	""{{ Search
		
		set ignorecase " 开启搜索忽略大小写
		
		set smartcase " 如果有一个大写字母，则切换到大小写敏感查找

		set hlsearch " 开启搜索高亮
		
		set incsearch " 光标立刻跳转到搜索到内容
		
		set nowrapscan " 搜索到最后匹配的位置后,再次搜索不回到第一个匹配处

	"}}

	""{{ 

		filetype on " 开启文件类型侦测

		filetype indent on " 自适应不同语言的智能缩进

		filetype plugin indent on " 根据侦测到的不同类型加载对应的插件

		syntax enable " 开启语法高亮功能

		syntax on " 允许用指定语法高亮配色方案替换默认方案

		set backspace=indent,eol,start

		set fileencoding=utf-8 " 使用utf-8新建文件

		set fileencodings=utf-8,gbk " 使用utf-8或gbk打开文件

		set helplang=cn " 帮助系统设置为中文

	"}}

	""{{ 

		set expandtab " 将制表符扩展为空格

		set tabstop=4 " 设置编辑时制表符占用空格数
		
		set shiftwidth=4 " 设置格式化时制表符占用空格数

		set softtabstop=4 " 让 vim 把连续数量的空格视为一个制表符

	"}}

	" {{

		set foldmethod=indent " 基于缩进或语法进行代码折叠
		
		set nofoldenable " 启动 vim 时关闭折叠代码
		
	" }}

	set completeopt=menu,menuone

	set nocompatible " 关闭兼容模式

	set wildmenu " 命令行模式智能补全

	let mapleader=" " " <Leader>

	set mouse=a " 开启鼠标模式

	set nowritebackup

	set updatetime=300

	set noswapfile " 关闭 swap 文件

	set number " 显示行号

	set relativenumber " 显示相对行号

	set ruler " 显示光标当前位置

	set nowrap " 禁止折行

	set encoding=utf-8 " 设置编码

	set showcmd " 显示还没有输入完整的命令

	set showmode " 左下角显示当前模式

	set cursorline " 高亮显示当前行

	" set cursorcolumn " 高亮显示当前列

	set showmatch " 高亮显示匹配的括号

	set matchtime=5 " 匹配括号高亮的时间

	set noeb " 去掉输入错误时的提示声音

	set ttimeout

	set ttimeoutlen=100 " 默认按下Esc后,需要等待1秒才生效,设置Esc超时时间为100ms,尽快生效

	set confirm " 在处理未保存或只读文件的时候，弹出确认

	set autoread " 文件在Vim之外修改过，自动重新读入

	set report=0 " 通过使用:commands命令，告诉我们文件的哪一行被改变过

	" set gcr=a:block-blinkon0 " 禁止光标闪烁

	"{{ 禁止显示滚动条
		set guioptions-=l
		set guioptions-=L
		set guioptions-=r
		set guioptions-=R
	" }}

	"{{ 禁止显示菜单和工具条
		set guioptions-=m
		set guioptions-=T
	" }}

"}