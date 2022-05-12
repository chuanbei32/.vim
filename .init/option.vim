" {

	" 禁用兼容模式「VI 模式」
    set nocompatible

	set runtimepath+=~/.vim/__ultisnips

	set tags=./.tags;,.tags,tags

	set viminfo='1000,f1,<500,:1000,@1000,/1000,h,r/private/tmp,s10,n~/.viminfo

	set
		\ sessionoptions-=curdir,options
		\
		\ sessionoptions+=globals,skiprtp,resize,winpos,unix
		\
		\ " 会话

	set
		\ visualbell novisualbell errorbells noerrorbells belloff=all t_vb=
		\
		\ " 声音

	"	" 备份「文件夹不存在则创建」
	"	set backup backupext=.bak backupdir=~/.vim/_backupfiles
	"    silent! call mkdir(expand('~/.vim/_backupfiles'), 'p', 0755)
	"
	"	" 交换「文件夹不存在则创建」
	"	set swapfile directory=~/.vim/_swapfiles
	"    silent! call mkdir(expand('~/.vim/_swapfiles'), 'p', 0755)
	"
	"	" 撤销「文件夹不存在则创建」
	"	set undofile undodir=~/.vim/_undofiles
	"    silent! call mkdir(expand('~/.vim/_undofiles'), 'p', 0755)

	set
		\ encoding=utf-8 fileencoding=utf-8 termencoding=utf-8 makeencoding=utf-8 printencoding=utf-8
		\
		\ fileencodings=utf-8,gbk,gb18030,ucs-bom,big5,euc-jp,latin1
		\
		\ " 编码

	set
		\ autoindent expandtab smartindent cindent copyindent breakindent
		\
		\ tabstop=4 softtabstop=4 smarttab shiftwidth=4
		\
		\ " 缩进

	set
		\ foldenable foldmethod=manual foldlevelstart=1 foldnestmax=20 foldminlines=1
		\
		\ " 折叠

	set
		\ complete-=t.i completeopt-=preview
		\
		\ " 补全

	set
		\ matchpairs+=<:> matchtime=1 showmatch
		\
		\ " 匹配

	set
		\
		\ notimeout nottimeout
		\
		\ timeoutlen=300 ttimeoutlen=300
		\
		\ " 超时

	set
		\ t_Co=256 t_RB= t_SH= t_RS= t_ut=
		\
		\ shell=zsh ttyfast
		\
		\ termwinkey=<c-s>
		\
		\ " 终端

	set
		\ number wrap virtualedit=block,onemore cursorline sidescrolloff=10 sidescroll=1 linebreak
		\
		\ " 行

	set
		\
		\ cursorcolumn relativenumber colorcolumn=80,120,180 scrolloff=1 scrolljump=1 signcolumn=yes
		\
		\ " 列

	set
		\ wildmenu wildmode=list:longest,full wildignorecase showcmd history=10000
		\
		\ " 命令行

	set
		\ modeline modelines=5
		\
		\ " 模式行

	set
		\ ignorecase smartcase hlsearch incsearch nowrapscan path+=** suffixes=.backup magic gdefault
		\
		\ " 查找/替换

	set
		\ ruler display+=lastline noshowmode laststatus=2 showtabline=2
		\
		\ iskeyword+=_,$,@,%,#,-
		\
		\ list listchars=tab:\|\ ,trail:.,extends:>,precedes:<
		\
		\ splitbelow splitright winminheight=0 winminwidth=0
		\
		\ autoread confirm
		\
		\ hidden switchbuf+=usetab,newtab,useopen
		\
		\ formatoptions+=m,B fileformats=unix,dos,mac report=0 lazyredraw backspace=indent,eol,start
		\
		\ selection=inclusive selectmode+=mouse,key shortmess+=S clipboard+=unnamed diffopt+=vertical
		\
		\ viewoptions-=options nolangremap nolangnoremap shiftround
		\
		\ synmaxcol=0 nrformats-=octal
		\
		\ " 其他

"}
