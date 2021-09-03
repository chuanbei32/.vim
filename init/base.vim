" base {

	"" 基础设置 {{

		let mapleader=" " " <Leader>

		set nocompatible " 禁用 vi 兼容模式

		set viminfo='1000,f1,<500,:1000,@1000,/1000,h,r/private/tmp,s10,n~/.viminfo " 设置 viminfo, 必须放在 nocompatible 之后

		set helplang=cn " 帮助系统设置为中文

		set backspace=eol,start,indent " 设置 Backspace 键模式

		set autoindent " 自动缩进

		set smartindent 

		set cindent " 打开 C/C++ 语言缩进优化

		set winaltkeys=no " Windows 禁用 ALT 操作菜单（使得 ALT 可以用到 Vim里）

		set nowrap " 禁止折行
		" set wrap " 开启折行

		set ttimeout " " 打开功能键超时检测（终端下功能键为一串 ESC 开头的字符串）

		set ttimeoutlen=10 " 默认按下Esc后, 需要等待1秒才生效, 设置Esc超时时间为 10ms, 尽快生效

		set ruler " 显示光标当前位置

		set expandtab " 将制表符扩展为空格

		set tabstop=4 " 设置编辑时制表符占用空格数
		
		set shiftwidth=4 " 设置格式化时制表符占用空格数

		set softtabstop=4 " 让 vim 把连续数量的空格视为一个制表符

		set mouse+=a " 开启鼠标模式

		set cursorline " 高亮显示当前行

		" set cursorcolumn " 高亮显示当前列

		set visualbell " 错误时不发出声音, 只显示在屏幕上

		set noeb " 去掉输入错误时的提示声音

		set confirm " 在处理未保存或只读文件的时候，弹出确认

		set autoread " 文件在 Vim 之外修改过，自动重新读入

		set history=10000 " 历史命令最大记录数

		set showmatch " 高亮显示匹配的括号

		set matchtime=2 " 显示括号匹配的时间

		set display=lastline " 显示最后一行

		set wildmenu " 命令行模式智能补全

		set lazyredraw " 延迟绘制（提升性能）

		set autowrite " 自动保存

		set errorformat +=[%f:%l]\ ->\ %m,[%f:%l]:%m " 错误格式

		set listchars=tab:\|\ ,trail:.,extends:>,precedes:< " 设置分隔符可见

		set tags=./.tags;,.tags,tags " 设置 tags：当前文件所在目录往上向根目录搜索直到碰到 .tags 文件或者 Vim 当前目录包含 .tags 文件

		" set formatoptions -=o " 如遇 Unicode 值大于 255 的文本，不必等到空格再折行
		set formatoptions +=m

		set formatoptions +=B " 合并两行中文时，不在中间加空格
		
		set fileformats=unix,dos,mac " 文件换行符，默认使用 unix 换行符

		set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

		set wildignore +=.hg,.git,.svn                    
		set wildignore +=*.aux,*.out,*.toc                
		set wildignore +=*.jpg,*.bmp,*.gif,*.png,*.jpeg   
		set wildignore +=*.o,*.obj,*.exe,*.dll,*.manifest 
		set wildignore +=*.spl                            
		set wildignore +=*.sw?                            
		set wildignore +=*.DS_Store                       
		set wildignore +=*.luac                           
		set wildignore +=migrations                       
		set wildignore +=go/pkg                           
		set wildignore +=go/bin                           
		set wildignore +=go/bin-vagrant             
		set wildignore +=*.pyc                        
		set wildignore +=*.orig

		set magic " 正则模式

		set colorcolumn=80,120,180 " 固定列高亮

		set modeline " 模式行

		set modelines=5 " 模式行查找行数

		set scrolloff=5

		set scrolljump=10

	" }}

	" 补全设置 {{

		set wildmode=list:longest,full " 命令行补全

		set complete=.,w,b,u,t

		set completeopt=longest,menu,menuone

		set omnifunc=ale#completion#OmniFunc " Omni 补全设置

	" }}

	" 搜索设置 {{

		set ignorecase " 开启搜索忽略大小写

		set smartcase " 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母

		set hlsearch " 高亮搜索内容

		set incsearch " 光标立刻跳转到搜索到内容

		" set nowrapscan " 搜索到最后匹配的位置后,再次搜索不回到第一个匹配处

	" }}

	" 编码设置 {{

		scriptencoding utf-8

		set encoding=utf-8 " 内部工作编码

		set fileencoding=utf-8 " 文件默认编码

		set fileencodings=utf-8,gbk,gb18030,ucs-bom,big5,euc-jp,latin1 " 打开文件时自动尝试下面顺序的编码
			
		set termencoding=utf-8

	" }}

	" 备份设置 {{

		set backup " 允许备份

		" set writebackup " 保存时备份
		set nowritebackup " 

		set backupext=.bakup " 备份文件扩展名

		set backupdir=~/.vim/_backupfiles

		silent! call mkdir(expand('~/.vim/_backupfiles'), "p", 0755) " 创建目录，并且忽略可能出现的警告

		" set swapfile
		" set noswapfile " 禁用 swap 文件

		set directory=~/.vim/_swapfiles

		set undofile
		" set noundofile " 禁用 undo 文件

		set undodir=~/.vim/_undofiles

	" }}

	" 语法高亮设置 {{

		syntax enable " 开启语法高亮功能

		syntax on " 允许用指定语法高亮配色方案替换默认方案

		" syntax sync minlines=256

	" }}

	" 代码折叠设置 {{

		set foldenable " 允许代码折叠
		" set nofoldenable " 启动 vim 时关闭折叠代码

		" 折叠方法
		" manual    手工折叠
		" indent    使用缩进表示折叠
		" expr      使用表达式定义折叠
		" syntax    使用语法定义折叠
		" diff      对没有更改的文本进行折叠
		" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
		set foldmethod=indent  " 代码折叠默认使用缩进
		
		set foldlevelstart=1

		set foldnestmax=2

	" }}

	" 缩进设置 {{

		filetype on " 开启文件类型侦测

		filetype indent on " 自适应不同语言的智能缩进

		filetype plugin indent on " 根据侦测到的不同类型加载对应的插件

	" }}

	set t_RS=

	set t_SH=

	set t_ut=

	set t_ti= t_te=

	set t_vb=

	set updatetime=300

	set report=0 " 通过使用:commands命令，告诉我们文件的哪一行被改变过

	" set gcr=a:block-blinkon0 " 禁止光标闪烁

	set shell=zsh

	" set modifiable " 设置文件可被修改

	set switchbuf+=usetab,newtab

	set smarttab

	set mousehide

	set selection=inclusive

	set selectmode=mouse,key

	set novisualbell

	set noerrorbells

	set tm=500

	set linebreak

	set sidescrolloff=7

	set sidescroll=1

	set shortmess+=c

	set ttyfast

	set synmaxcol=300

	set notimeout

	set wildchar=<TAB>

	set copyindent

	set wmw=0

	set wmh=0

	set path+=**

	set clipboard=unnamed

	set cmdheight=1

	set textwidth=85

	set whichwrap+=<,>,h,l

	set diffopt+=vertical
"}