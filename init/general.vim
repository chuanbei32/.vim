"{ 
	set nocompatible " 关闭兼容模式

	let g:is_win = has('win32') || has('win64')

	let g:is_linux = has('unix') && !has('macunix')

	let g:is_mac = has('macunix')


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

	"{{

		" 折叠方法
		" manual    手工折叠
		" indent    使用缩进表示折叠
		" expr      使用表达式定义折叠
		" syntax    使用语法定义折叠
		" diff      对没有更改的文本进行折叠
		" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
		set foldmethod=indent " 基于缩进或语法进行代码折叠
		set foldnestmax=2
		set foldlevelstart=1

		" set nofoldenable " 启动 vim 时关闭折叠代码
		
	"}}

	set colorcolumn=80,120,180

	set complete=.,w,b,u,t

	set completeopt=longest,menu,menuone

	set wildmenu

	set wildmode=list:longest,full
	set wildignore+=.hg,.git,.svn                    
	set wildignore+=*.aux,*.out,*.toc                
	set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   
	set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest 
	set wildignore+=*.spl                            
	set wildignore+=*.sw?                            
	set wildignore+=*.DS_Store                       
	set wildignore+=*.luac                           
	set wildignore+=migrations                       
	set wildignore+=go/pkg                           
	set wildignore+=go/bin                           
	set wildignore+=go/bin-vagrant             
	set wildignore+=*.pyc                        
	set wildignore+=*.orig

	set wildmenu " 命令行模式智能补全

	let mapleader=" " " <Leader>

	set mouse+=a " 开启鼠标模式

	set nowritebackup

	set updatetime=300

	set noswapfile " 关闭 swap 文件

	set number " 显示行号

	set relativenumber " 显示相对行号

	set ruler " 显示光标当前位置

	" set nowrap " 禁止折行
	set wrap " 开启折行

	set encoding=utf-8 " 设置编码

	set showcmd " 显示还没有输入完整的命令

	" set showmode " 左下角显示当前模式
	set noshowmode " 左下角隐藏当前模式

	set cursorline " 高亮显示当前行

	" set cursorcolumn " 高亮显示当前列

	set showmatch " 高亮显示匹配的括号

	set matchtime=3 " 匹配括号高亮的时间

	set noeb " 去掉输入错误时的提示声音

	set ttimeout

	set ttimeoutlen=10 " 默认按下Esc后,需要等待1秒才生效,设置Esc超时时间为100ms,尽快生效

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

	set laststatus=2

	set omnifunc=ale#completion#OmniFunc

	set autoindent " 自动缩进

	set shell=zsh

	set modifiable " 设置文件可被修改

	set splitbelow " 设置新的垂直分割窗口在下侧

	set splitright " 设置新的垂直分割窗口在右侧

	set history=10000 " 历史命令最大记录数

	set modeline

	set modelines=5

	set undofile

	set viminfo='1000,f1,<500,:1000,@1000,/1000,h,r/private/tmp,s10,n~/.viminfo " 设置 viminfo, 必须放在 nocompatible 之后

	set visualbell " 错误时不发出声音, 只显示在屏幕上

	set switchbuf+=usetab,newtab

	scriptencoding utf-8

	set termencoding=utf-8

	set fileformat=unix " 保存文件的格式为 unix
	
	set fileformats=unix,dos

	set lazyredraw

	set magic

	set smarttab

	set scrolloff=5

	set scrolljump=10

	set t_ti= t_te=

	set mousehide

	set selection=inclusive

	set selectmode=mouse,key

	set novisualbell

	set noerrorbells

	set t_vb=

	set tm=500

	set directory=~/.vim/swapfiles

	set undodir=~/.vim/undofiles

	set list

	set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

	set linebreak

	set sidescrolloff=7

	set sidescroll=1

	set formatoptions-=o

	set shortmess+=A

	set ttyfast

	syntax sync minlines=256

	set synmaxcol=300

	set notimeout

	set wildchar=<TAB>

	set copyindent

	set wmw=0

	set wmh=0
"}