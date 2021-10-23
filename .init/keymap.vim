" {
	
	" let mapleader="\<space>"

	" noremap {{

		noremap <Leader>\sh <cmd>shell<CR>
		noremap <Leader>\tm <cmd>terminal<CR>

	" }}

	" nnoremap {{

		nnoremap <esc><esc> <cmd>nohlsearch<cr>

		nnoremap Q <Nop>

		nnoremap <Leader>;s :%s/\<<C-R>=expand("<cword>")<CR>\>/
		nnoremap <Leader>;g :Leaderf rg -e <C-R>=expand("<cword>")<CR>

		nnoremap k gk
		nnoremap gk k
		nnoremap j gj
		nnoremap gj j

		nnoremap gh g^
		nnoremap gH ^
		nnoremap gl g$
		nnoremap gL g_

		nnoremap <tab> V>
		nnoremap <s-tab> V<
		noremap < <cmd>tabpre<cr> 
		noremap > <cmd>tabnex<cr>

	" }}

	" cnoremap {{

		cnoremap <c-h> <left>
		cnoremap <c-j> <down>
		cnoremap <c-k> <up>
		cnoremap <c-l> <right>

		cnoremap <c-a> <home>
		cnoremap <c-e> <end>

		cnoremap <c-f> <c-d>
		cnoremap <c-b> <left>
		cnoremap <c-d> <del>
		cnoremap <c-_> <c-k>

		cnoremap <a-h> <c-left>
		cnoremap <a-l> <c-right>

		cnoremap qw wq
		cnoremap Wq wq
		cnoremap WQ wq
		cnoremap Qa qa
		cnoremap Bd bd
		cnoremap bD bd

	" }}

	" inoremap {{

		inoremap <c-a> <home>
		inoremap <c-e> <end>
		inoremap <c-d> <del>

		inoremap <C-h> <Left>
		inoremap <C-j> <down>
		inoremap <C-k> <up>
		inoremap <C-l> <right>

		inoremap <a-h> <c-Left>
		inoremap <a-l> <c-right>

		inoremap <a-j> <c-\><c-o>gj
		inoremap <a-k> <c-\><c-o>gk
		inoremap <a-y> <c-\><c-o>d$

		inoremap <S-Return> <C-o>o

		inoremap ( ()<Left>
		inoremap { {}<Left>
		inoremap [ []<Left>

		inoremap ' ''<Left>
		inoremap " ""<Left>
		inoremap ` ``<Left>

		inoremap jk <Esc>

	" }}

	" xnoremap {{

		xnoremap < <gv
		xnoremap > >gv|
		xnoremap j gj
		xnoremap k gk

	" }}

	" vnoremap {{

		vnoremap <silent> <Leader>;c :s/^/\/\//<CR>:noh<CR>
		vnoremap <silent> <Leader>;u :s/\/\///<CR>:noh<CR>

		vnoremap <tab> >gv
		vnoremap <s-tab> <gv
		
	" }} 


	" d {{

	" }}

	" f {{


	" }}

	" Window {{

		nnoremap <leader>wrp :resize<space>+
		nnoremap <leader>wrm :resize<space>-
		nnoremap <leader>wrn :resize<space>

		nnoremap <leader>wrvp :resize<space>+
		nnoremap <leader>wrvm :resize<space>-
		nnoremap <leader>wrvn :resize<space>

		nnoremap <leader>wre <c-w>=

		" nnoremap <leader>wsp :split<space>
		nnoremap <leader>ws <c-w>s
		" nnoremap <leader>wvsp :vsplit<space>
		nnoremap <leader>wv <c-w>v

		nnoremap <leader>wn <cmd>new<cr>
		nnoremap <leader>wvn <cmd>vnew<cr>

		nnoremap <leader>wc <c-w>c
		nnoremap <leader>wq <c-w>q
		nnoremap <leader>wo <c-w>o

		nnoremap <leader>wl <c-w>l
		nnoremap <leader>wh <c-w>h
		nnoremap <leader>wk <c-w>k
		nnoremap <leader>wj <c-w>j

		noremap <a-h> <c-w>h
		noremap <a-l> <c-w>l
		noremap <a-j> <c-w>j
		noremap <a-k> <c-w>k

		inoremap <a-h> <esc><c-w>h
		inoremap <a-l> <esc><c-w>l
		inoremap <a-j> <esc><c-w>j
		inoremap <a-k> <esc><c-w>k

		set termwinkey=<c-_>

		tnoremap <a-h> <c-_>h
		tnoremap <a-l> <c-_>l
		tnoremap <a-j> <c-_>j
		tnoremap <a-k> <c-_>k
		tnoremap <a-q> <c-\><c-n>

		nnoremap <c-x> <c-w>x

	"}}

	" Buffer {{

		nnoremap <Leader>b <nop>

		nnoremap <Leader>bl <cmd>buffers<cr>

		nnoremap <Leader>bs :buffer<space>

		nnoremap <Leader>ba :badd<space>

		nnoremap <Leader>bn <cmd>bnext<cr>
		nnoremap <Leader>bp <cmd>bprevious<cr>

		nnoremap <Leader>bd :bdelete<space>
		nnoremap <Leader>bw <cmd>bwipeout<cr>

	"}}

	" Tab {{

		noremap <silent> <leader>to <cmd>tabnew<cr>
		noremap <silent> <leader>tl <cmd>tabs<cr>

		noremap <silent> <leader>tn <cmd>tabnext<cr>
		noremap <silent> <leader>tp <cmd>tabprev<cr>

		noremap <silent> <leader>tc <cmd>tabclose<cr>
		noremap <silent> <leader>ta <cmd>tabonly<cr>

		noremap <silent><leader>1 1gt<cr>
		noremap <silent><leader>2 2gt<cr>
		noremap <silent><leader>3 3gt<cr>
		noremap <silent><leader>4 4gt<cr>
		noremap <silent><leader>5 5gt<cr>
		noremap <silent><leader>6 6gt<cr>
		noremap <silent><leader>7 7gt<cr>
		noremap <silent><leader>8 8gt<cr>
		noremap <silent><leader>9 9gt<cr>
		noremap <silent><leader>0 10gt<cr>

		noremap <silent><a-1> <cmd>tabn 1<cr>
		noremap <silent><a-2> <cmd>tabn 2<cr>
		noremap <silent><a-3> <cmd>tabn 3<cr>
		noremap <silent><a-4> <cmd>tabn 4<cr>
		noremap <silent><a-5> <cmd>tabn 5<cr>
		noremap <silent><a-6> <cmd>tabn 6<cr>
		noremap <silent><a-7> <cmd>tabn 7<cr>
		noremap <silent><a-8> <cmd>tabn 8<cr>
		noremap <silent><a-9> <cmd>tabn 9<cr>
		noremap <silent><a-0> <cmd>tabn 10<cr>

		inoremap <silent><a-1> <ESC><cmd>tabn 1<cr>
		inoremap <silent><a-2> <ESC><cmd>tabn 2<cr>
		inoremap <silent><a-3> <ESC><cmd>tabn 3<cr>
		inoremap <silent><a-4> <ESC><cmd>tabn 4<cr>
		inoremap <silent><a-5> <ESC><cmd>tabn 5<cr>
		inoremap <silent><a-6> <ESC><cmd>tabn 6<cr>
		inoremap <silent><a-7> <ESC><cmd>tabn 7<cr>
		inoremap <silent><a-8> <ESC><cmd>tabn 8<cr>
		inoremap <silent><a-9> <ESC><cmd>tabn 9<cr>
		inoremap <silent><a-0> <ESC><cmd>tabn 10<cr>

		nnoremap <a-j>     <cmd>tabnext<cr>
		nnoremap <a-k>     <cmd>tabprevious<cr>
		" nnoremap <a-[>     <cmd>tabprevious<cr>
		" nnoremap <a-]>     <cmd>tabnext<cr>
		" nnoremap <c-tab>   <cmd>tabnext<cr>
		" nnoremap <c-s-tab> <cmd>tabprevious<cr>
		" nnoremap <c-s-j>   <cmd>tabnext<cr>
		" nnoremap <c-s-k>   <cmd>tabprevious<cr>
		" nnoremap <a-{> <cmd>-tabmove<cr>
		" nnoremap <a-}> <cmd>+tabmove<cr>

	"}}

	" session {{

		noremap <leader>ss <cmd>mksession!<cr>

	" }}

	" quickfix {{

		noremap <leader>qo <cmd>copen<CR>
		noremap <leader>qn <cmd>cnext<CR>
		noremap <leader>qp <cmd>cprevious<CR>
		noremap <leader>qc <cmd>cclose<CR>

	" }}

" }