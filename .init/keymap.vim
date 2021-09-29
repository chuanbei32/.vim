" {
	
	let mapleader="\<space>"

	nnoremap <space> <leader> 

	nnoremap <Leader>sh <cmd>shell<CR>
	nnoremap <Leader>tm <cmd>terminal<CR>
	
	nnoremap <silent> <leader>noh <cmd>noh<cr>
	inoremap <C-z> <C-x><C-o>

	nnoremap ]w <cmd>WhitespaceNext<CR>
	nnoremap [w <cmd>WhitespacePrev<CR>

	inoremap <c-a> <home>
	inoremap <c-e> <end>
	inoremap <c-d> <del>
	inoremap <c-_> <c-k>

	nnoremap <Up>    <cmd>resize +1<CR>
	nnoremap <Down>  <cmd>resize -1<CR>
	nnoremap <Left>  <cmd>vertical resize +1<CR>
	nnoremap <Right> <cmd>vertical resize -1<CR>

	nnoremap k gk
	nnoremap gk k
	nnoremap j gj
	nnoremap gj j

	nmap ]q <cmd>cnext<CR>
	nmap [q <cmd>cprev<CR>
	nmap ]a <cmd>lnext<CR>
	nmap [a <cmd>lprev<CR>

	noremap <C-h> <left>
	noremap <C-j> <down>
	noremap <C-k> <up>
	noremap <C-l> <right>

	inoremap <C-h> <left>
	inoremap <C-j> <down>
	inoremap <C-k> <up>
	inoremap <C-l> <right>

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

	noremap <m-h> b
	noremap <m-l> w
	inoremap <m-h> <c-left>
	inoremap <m-l> <c-right>

	noremap <m-j> gj
	noremap <m-k> gk
	inoremap <m-j> <c-\><c-o>gj
	inoremap <m-k> <c-\><c-o>gk

	cnoremap <m-h> <c-left>
	cnoremap <m-l> <c-right>

	noremap <m-y> d$
	inoremap <m-y> <c-\><c-o>d$

	inoremap <S-Return> <C-o>o

	nnoremap zl z4l
	nnoremap zh z4h

	nnoremap LB 0 
	nnoremap LE $ 
	vnoremap <Leader>y "+y 
	nnoremap <Leader>p "+p 
	nnoremap <Leader>q :q<CR> 
	nnoremap <Leader>W :w<CR> 
	nnoremap <Leader>WQ :wa<CR>:q<CR> 
	nnoremap <Leader>Q :qa!<CR> 
	nnoremap <Leader>M % 
	nnoremap <CR> za
	nnoremap <S-Return> zMzv
	xnoremap j gj
	xnoremap k gk
	nnoremap gh g^
	nnoremap gl g$

	xnoremap < <gv
	xnoremap > >gv|

	nmap <BS> %
	xmap <BS> %

	nnoremap <Leader>w <cmd>write<CR>
	nnoremap <C-s> <cmd>write<CR>
	xnoremap <C-s> <cmd>write<CR>
	cnoremap <C-s> <cmd>write<CR>

	cnoreabbrev qw wq
	cnoreabbrev Wq wq
	cnoreabbrev WQ wq
	cnoreabbrev Qa qa
	cnoreabbrev Bd bd
	cnoreabbrev bD bd


	nmap <Leader>ts <cmd>setlocal spell!<CR>
	nmap <Leader>tn <cmd>setlocal nonumber!<CR>
	nmap <Leader>tl <cmd>setlocal nolist!<CR>
	nmap <Leader>th <cmd>nohlsearch<CR>

	" Window {{ 

		nnoremap <Leader>wc <C-W>c " 
		nnoremap <Leader>wl <C-W>l " 跳转至右方的窗口
		nnoremap <Leader>wh <C-W>h " 跳转至左方的窗口
		nnoremap <Leader>wk <C-W>k " 跳转至上方的窗口
		nnoremap <Leader>wj <C-W>j " 跳转至下方的窗口

		noremap <m-H> <c-w>h
		noremap <m-L> <c-w>l
		noremap <m-J> <c-w>j
		noremap <m-K> <c-w>k

		inoremap <m-H> <esc><c-w>h
		inoremap <m-L> <esc><c-w>l
		inoremap <m-J> <esc><c-w>j
		inoremap <m-K> <esc><c-w>k

		set termwinkey=<c-_>

		tnoremap <m-H> <c-_>h
		tnoremap <m-L> <c-_>l
		tnoremap <m-J> <c-_>j
		tnoremap <m-K> <c-_>k
		tnoremap <m-q> <c-\><c-n>

		nnoremap <C-x> <C-w>x

	"}}

	" Buffer {{ 

		nnoremap <buffer> <Leader>buf :buffers<CR>
		nnoremap <buffer> <Leader>bb :buffer<Space>
		nnoremap <buffer> <Leader>ba :badd<Space>
		nnoremap <buffer> <Leader>bd :bdelete<Space>
		nnoremap <buffer> <Leader>bun :bunload!<CR>
		nnoremap <buffer> <Leader>bn :bnext<CR>
		nnoremap <buffer> <Leader>bp :bprevious<CR>
		nnoremap <buffer> <Leader>bl :blast<CR>
		nnoremap <buffer> <Leader>bf :bfirst<CR>

	"}}

	" Tab {{	

		nnoremap <buffer> <Leader>tab :tabs<CR>
		nnoremap <buffer> <Leader>tn :tabnew<Space>
		" nnoremap <buffer> <Leader>tc :tabclose<CR>
		nnoremap <buffer> <Leader>tn :tabn<CR>
		nnoremap <buffer> <Leader>tp :tabp<CR>
		nnoremap <buffer> <Leader>tf :tabfirst<CR>
		nnoremap <buffer> <Leader>tl :tablast<CR>

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

		noremap <silent><m-1> :tabn 1<cr>
		noremap <silent><m-2> :tabn 2<cr>
		noremap <silent><m-3> :tabn 3<cr>
		noremap <silent><m-4> :tabn 4<cr>
		noremap <silent><m-5> :tabn 5<cr>
		noremap <silent><m-6> :tabn 6<cr>
		noremap <silent><m-7> :tabn 7<cr>
		noremap <silent><m-8> :tabn 8<cr>
		noremap <silent><m-9> :tabn 9<cr>
		noremap <silent><m-0> :tabn 10<cr>

		inoremap <silent><m-1> <ESC>:tabn 1<cr>
		inoremap <silent><m-2> <ESC>:tabn 2<cr>
		inoremap <silent><m-3> <ESC>:tabn 3<cr>
		inoremap <silent><m-4> <ESC>:tabn 4<cr>
		inoremap <silent><m-5> <ESC>:tabn 5<cr>
		inoremap <silent><m-6> <ESC>:tabn 6<cr>
		inoremap <silent><m-7> <ESC>:tabn 7<cr>
		inoremap <silent><m-8> <ESC>:tabn 8<cr>
		inoremap <silent><m-9> <ESC>:tabn 9<cr>
		inoremap <silent><m-0> <ESC>:tabn 10<cr>

		" noremap <silent> <leader>tc :tabnew<cr>
		noremap <silent> <leader>tq :tabclose<cr>
		noremap <silent> <leader>tn :tabnext<cr>
		noremap <silent> <leader>tp :tabprev<cr>
		noremap <silent> <leader>to :tabonly<cr>

		nnoremap <A-j>     <cmd>tabnext<CR>
		nnoremap <A-k>     <cmd>tabprevious<CR>
		nnoremap <A-[>     <cmd>tabprevious<CR>
		nnoremap <A-]>     <cmd>tabnext<CR>
		nnoremap <C-Tab>   <cmd>tabnext<CR>
		nnoremap <C-S-Tab> <cmd>tabprevious<CR>
		nnoremap <C-S-j>   <cmd>tabnext<CR>
		nnoremap <C-S-k>   <cmd>tabprevious<CR>

		nnoremap <A-{> <cmd>-tabmove<CR>
		nnoremap <A-}> <cmd>+tabmove<CR>

		" 左移 tab
		function! Tab_MoveLeft()
			let l:tabnr = tabpagenr() - 2
			if l:tabnr >= 0
				exec 'tabmove '.l:tabnr
			endif
		endfunc

		" 右移 tab
		function! Tab_MoveRight()
			let l:tabnr = tabpagenr() + 1
			if l:tabnr <= tabpagenr('$')
				exec 'tabmove '.l:tabnr
			endif
		endfunc

		noremap <silent><leader>tl :call Tab_MoveLeft()<cr>
		noremap <silent><leader>tr :call Tab_MoveRight()<cr>
		noremap <silent><m-left> :call Tab_MoveLeft()<cr>
		noremap <silent><m-right> :call Tab_MoveRight()<cr>

		nnoremap <tab> V>
		nnoremap <s-tab> V<
		vnoremap <tab> >gv
		vnoremap <s-tab> <gv

	"}}

	" session {{

	" }}

" {