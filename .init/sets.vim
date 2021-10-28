" {
    set nocompatible

	filetype plugin on

	syntax on

	packadd! gruvbox-material

	colorscheme gruvbox-material

	set backup backupext=.bak backupdir=~/.vim/_backupfiles updatetime=300
	silent! call mkdir(expand('~/.vim/_backupfiles'), "p", 0755)

	set swapfile directory=~/.vim/_swapfiles
	silent! call mkdir(expand('~/.vim/_swapfiles'), "p", 0755)

	set undofile undodir=~/.vim/_undofiles
	silent! call mkdir(expand('~/.vim/_swapfiles'), "p", 0755)
	
	set
		\ runtimepath+=~/.vim/__ultisnips
		\
		\ viminfo='1000,f1,<500,:1000,@1000,/1000,h,r/private/tmp,s10,n~/.viminfo
		\
		\ tags=./.tags;,.tags,tags
		\
		\ " 路径

	set
		\ encoding=utf-8 fileencoding=utf-8 termencoding=utf-8 makeencoding=utf-8 printencoding=utf-8
		\
		\ fileencodings=utf-8,gbk,gb18030,ucs-bom,big5,euc-jp,latin1
		\ 
		\ " 编码

	scriptencoding utf-8

	set
		\ visualbell novisualbell errorbells noerrorbells belloff=all
		\ 
		\ " 警告声音

	set
		\ autoindent smartindent cindent copyindent shiftwidth=4 breakindent breakindentopt=
		\ 
		\ " 缩进

	set
		\ foldenable foldmethod=indent foldlevelstart=1 foldnestmax=2 foldminlines=5
		\ 
		\ " 折叠

	set
		\ wildmenu wildmode=list:longest,full wildignorecase showcmd history=10000
		\ 
		\ " 命令行

	set
		\ complete-=t.i completeopt-=preview
		\ 
		\ " 补全

	set
		\ matchpairs+=<:> matchtime=1 showmatch
		\ 
		\ " 匹配

	set
		\ ignorecase smartcase hlsearch incsearch nowrapscan path+=** suffixes=.backup magic
		\ 
		\ " 搜索

	set
		\ number wrap virtualedit=block,onemore cursorline sidescrolloff=7 sidescroll=1 linebreak
		\ 
		\ " 行

	set
		\ 
		\ relativenumber colorcolumn=80,120,180 scrolloff=1 scrolljump=1 signcolumn=yes
		\ 
		\ " 列

	set
		\ ttimeout ttimeoutlen=10 timeoutlen=500 notimeout
		\ 
		\ " 超时

	set
		\ modeline modelines=5
		\ 
		\ " 模式行

	set
		\ t_Co=256 t_RB= t_SH= t_RS= t_ut=
		\ 
		\ " 终端

	set
		\ background=dark ruler display+=lastline noshowmode
		\
		\ list listchars=tab:\|\ ,trail:.,extends:>,precedes:<
		\
		\ showtabline=2 laststatus=2 splitbelow splitright winminheight=0 winminwidth=0
		\ 
		\ autoread confirm shell=zsh ttyfast termwinkey=<c-_>
		\
		\ hidden switchbuf+=usetab,newtab,useopen
		\
		\ formatoptions+=m,B fileformats=unix,dos,mac report=0 lazyredraw
		\
		\ backspace=indent,eol,start
		\
		\ selection=inclusive selectmode+=mouse,key shortmess+=S clipboard+=unnamed diffopt+=vertical gdefault
		\
		\ iskeyword+=_,$,@,%,#,-
		\
		\ expandtab tabstop=4 softtabstop=4 smarttab viewoptions-=options nolangremap langnoremap shiftround
		\
		\ synmaxcol=0 nrformats-=octal sessionoptions-=options sessionoptions-=curdir sessionoptions+=globals
		\ 
		\ " 其他

"}
