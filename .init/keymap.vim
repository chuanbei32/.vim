" {
	
	let mapleader="\<space>"

	" noremap! {{

	" }}


	" noremap {{

		" 进行版权声明的设置
		function AddTitle()
	        call append(1,"")
	        call append(2,"/**")
	        call append(3," *")
	        call append(4," * Author: chuanbei32 - chuanbei32@sina.com")
	        call append(5," *")
	        call append(6," * Last modified: ".strftime("%Y-%m-%d %H:%M"))
	        call append(7," *")
	        call append(8," * Filename: ".expand("%:t"))
	        call append(9," *")
	        call append(10," * Description: ")
	        call append(11," *")
	        call append(12," */")
	        call append(13,"")
	        echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
		endf

	    " 更新最近修改时间和文件名
		function UpdateTitle()
	        normal m'
	        execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
	        normal ''
	        normal mk
	        execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
	        execute "noh"
	        normal 'k
	        echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
		endfunction

	    " 判断前10行代码里面，是否有Last modified这个单词，
	    " 如果没有的话，代表没有添加过作者信息，需要新添加；
	    " 如果有的话，那么只需要更新即可
		function TitleDet()
	        let n=1
	        " 默认为添加
	        while n < 14
	            let line = getline(n)
	            if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
	                call UpdateTitle()
	                return
	            endif
	        let n = n + 1
	        endwhile
	        call AddTitle()
		endfunction

		" 添加或更新头
		noremap fg :call TitleDet()<cr>

		noremap <Leader>sh <cmd>shell<CR>
		noremap <Leader>tm <cmd>terminal<CR>

		noremap 9 $ " 通过9跳转到行末尾, 0默认跳转到行首

		noremap <C-s> <cmd>write<CR>
		noremap <Leader>sh <cmd>shell<CR>
		noremap <Leader>tm <cmd>terminal<CR>

	" }}

	" nnoremap {{

		nnoremap <Leader>\v <C-v>

		nnoremap <Leader>;s :%s/\<<C-R>=expand("<cword>")<CR>\>/
		nnoremap <Leader>;g :vimgrep <C-R>=expand("<cword>")<CR>

		nnoremap k gk
		nnoremap gk k
		nnoremap j gj
		nnoremap gj j

		nnoremap <Leader>q :q<CR> 
		nnoremap <Leader>Q :qa!<CR> 
		nnoremap <Leader>W :w<CR> 
		nnoremap <Leader>WQ :wa<CR>:q<CR> 
		nnoremap <CR> za
		nnoremap <S-Return> zMzv

		nnoremap gh g^
		nnoremap gH ^
		nnoremap gl g$
		nnoremap gL g_

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

		inoremap <C-s> <cmd>write<CR>

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
		
	" }} 

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

		noremap < :tabpre<CR> 
		noremap > :tabnex<CR>

	"}}

	" session {{

	" }}

	" quickfix {{

		nmap ]q <cmd>cnext<CR>
		nmap [q <cmd>cprev<CR>
		nmap ]a <cmd>lnext<CR>
		nmap [a <cmd>lprev<CR>

	" }}

" }