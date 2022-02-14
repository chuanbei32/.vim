" {

	" let mapleader="\<space>"
	" let g:maplocalleader = ";"

	noremap <leader>f <nop>
	noremap <leader>b <nop>

	xnoremap < <gv
	nnoremap < <cmd>tabpre<cr>

	xnoremap > >gv|
	nnoremap > <cmd>tabnex<cr>

	nnoremap <tab> V>
	vnoremap <tab> >gv
	inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"

	nnoremap <s-tab> V<
	vnoremap <s-tab> <gv
	inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

	nnoremap j gj
	xnoremap j gj
	nnoremap <down> gj
	xnoremap <down> gj

	nnoremap k gk
	xnoremap k gk
	nnoremap <up> gk
	xnoremap <up> gk

	nnoremap gh g^
	nnoremap gH ^
	nnoremap gl g$
	nnoremap gL g_
	nnoremap gk k
	nnoremap gj j

	nnoremap <leader>nhs <cmd>nohlsearch<cr>
	nnoremap <leader>fws <cmd>%s/\\\@<!\s\+$//<cr>

	inoremap <leader>isp <cmd>set paste<cr>

	" buffer {{

		" nnoremap <leader>ba :badd<space>

		nnoremap <leader>bl <cmd>buffers<cr>

		nnoremap <leader>bn <cmd>bnext<cr>
		nnoremap <leader>bp <cmd>bprevious<cr>

		nnoremap <leader>bd :bdelete<space>
		nnoremap <leader>bo <cmd>BufferOnly<cr>
		nnoremap <leader>bc <cmd>BufferCurrent<cr>

		nnoremap <leader>bb :buffer<space>
		nnoremap <leader>bx <c-^>

		nnoremap <leader>br <cmd>bufdo e<cr>
		nnoremap <leader>be <cmd>e


		" 水平分割
		nnoremap <leader>bsl :sbuffer<space>

		" 垂直分割左
		nnoremap <leader>bsvl :vertical sbuffer<space>

		" 垂直分割右
		nnoremap <leader>bsvr :vertical belowright sbuffer<space>

	" }}

	" window {{

		nnoremap <leader>wo <c-w>o " 关闭其他窗口

		nnoremap <leader>ws <c-w>s " 水平分屏
		nnoremap <leader>wv <c-w>v " 垂直分屏

		nnoremap <leader>wmh <c-w>_ " 最大化窗口高度
		nnoremap <leader>wmw <c-w>\| " 最大化窗口宽度

		nnoremap <leader>w= <c-w>+ " 扩大窗口高度
		nnoremap <leader>w- <c-w>- " 缩小窗口高度
		nnoremap <leader>w, <c-w>> " 右窗口宽度
		nnoremap <leader>w. <c-w>< " 左窗口宽度

		nnoremap <leader>wd <c-w>= " 重置窗口
		nnoremap <leader>ww <c-w>w " 切换窗口
		nnoremap <leader>wr <c-w>r " 互换窗口

		" 关闭窗口
		nnoremap <leader>wc <c-w>c
		nnoremap <leader>wq <c-w>q

		" 移动窗口
		nnoremap <leader>wt <c-w>t
		nnoremap <leader>wb <c-w>b
		nnoremap <leader>wl <c-w>l
		nnoremap <leader>wh <c-w>h
		nnoremap <leader>wk <c-w>k
		nnoremap <leader>wj <c-w>j

		" 窗口移动
		nnoremap <leader>wH <c-w>H
		nnoremap <leader>wJ <c-w>J
		nnoremap <leader>wK <c-w>K
		nnoremap <leader>wL <c-w>L

	" }}

	" tab {{

		nnoremap <leader>tfe :tabedit<space>
		nnoremap <leader>tff :tabfind<space>
		nnoremap <leader>tfn :tabnew<space>

		nnoremap <leader>tl <cmd>tabs<cr>

		nnoremap <leader>tn <cmd>tabnext<cr>
		nnoremap <leader>tp <cmd>tabprev<cr>

		nnoremap <leader>tc <cmd>tabclose<cr>
		nnoremap <leader>to <cmd>tabonly<cr>

		nnoremap <leader>1 1gt<cr>
		nnoremap <leader>2 2gt<cr>
		nnoremap <leader>3 3gt<cr>
		nnoremap <leader>4 4gt<cr>
		nnoremap <leader>5 5gt<cr>
		nnoremap <leader>6 6gt<cr>
		nnoremap <leader>7 7gt<cr>
		nnoremap <leader>8 8gt<cr>
		nnoremap <leader>9 9gt<cr>
		nnoremap <leader>0 10gt<cr>

	" }}

	" quickfix {{

		nnoremap <leader>qo <cmd>copen 10<cr>
		nnoremap <leader>ql <cmd>clast<cr>
		nnoremap <leader>qf <cmd>cfirst<cr>
		nnoremap <leader>qn <cmd>cnext<cr>
		nnoremap <leader>qp <cmd>cprevious<cr>
		nnoremap <leader>qc <cmd>cclose<cr>
		nnoremap <leader>qe <cmd>cc<cr>

	" }}

	" session {{

		nnoremap <leader>ss :mksession! ~/.vim/__session/.vim<left><left><left><left>
		nnoremap <leader>sr :source ~/.vim/__session/

	" }}

	" viminfo {{

		nnoremap <leader>vs <cmd>wviminfo!<cr>

	" }}

	" terminal {{

		nnoremap <leader>tm <cmd>terminal<cr>

	" }}

	" shell {{

		nnoremap <leader>sh <cmd>shell<cr>

	" }}

	"" plugs {{

		" incsearch {{{

			map /  <Plug>(incsearch-forward)
			map ?  <Plug>(incsearch-backward)
			map g/ <Plug>(incsearch-stay)
			map n  <Plug>(incsearch-nohl-n)
			map N  <Plug>(incsearch-nohl-N)
			map *  <Plug>(incsearch-nohl-*)
			map #  <Plug>(incsearch-nohl-#)
			map g* <Plug>(incsearch-nohl-g*)
			map g# <Plug>(incsearch-nohl-g#)

		" }}}

		" AsyncRun {{{

	    	nnoremap <leader>arr :AsyncRun -raw<space>

		" }}}

		" vimspector {{{

			nmap <leader>dsn <Plug>VimspectorStepOver
		    nmap <leader>dsb <Plug>VimspectorToggleBreakpoint
		    nmap <leader>dss <Plug>VimspectorContinue
		    nmap <leader>dsr <Plug>VimspectorRestart
		    nmap <leader>dsp <Plug>VimspectorPause
		    nmap <leader>dst <Plug>VimspectorStop
		    nmap <leader>dsf <Plug>VimspectorAddFunctionBreakpoint
		    nmap <leader>dsc <Plug>VimspectorToggleConditionalBreakpoint
		    nmap <leader>dso <Plug>VimspectorStepOut
		    nmap <leader>dsi <Plug>VimspectorStepInto
		    nmap <leader>dsq <cmd>VimspectorReset<CR>
		    nmap <leader>dslc <Plug>VimspectorShowOutput Console<CR>
		    nmap <leader>dsld <Plug>VimspectorShowOutput stderr<CR>
		    nmap <leader>dslo <Plug>VimspectorShowOutput Vimspector-out<CR>
		    nmap <leader>dsle <Plug>VimspectorShowOutput Vimspector-err<CR>
		    nmap <leader>dsls <Plug>VimspectorShowOutput server<CR>
		    nmap <leader>dslt <Plug>VimspectorShowOutput Telemetry<CR>
		    nmap <leader>dse :<C-u>VimspectorEval<leader>
		    nmap <leader>dsw :<C-u>VimspectorWatch<leader>

		" }}}

		" DoxygenToolkit {{{

	        nnoremap <leader>dxa <cmd>DoxAuthor<cr>
	  	  	nnoremap <leader>dxx <cmd>Dox<cr>
	    	nnoremap <leader>dxl <cmd>DoxLic<cr>

		" }}}

		" dirvish {{{

		    nnoremap <leader>ddd <cmd>Dirvish<cr>

		" }}}

		" leaderF {{{

		    nnoremap <leader>lfe <cmd>Leaderf file<cr>
		    nnoremap <leader>lfn <cmd>Leaderf function<cr>

		    nnoremap <leader>lfb <cmd>Leaderf buffer<cr>
		    nnoremap <leader>lfg :Leaderf rg -e<space>
		    nnoremap <leader>lfm <cmd>Leaderf mru<cr>
		    nnoremap <leader>lft <cmd>Leaderf tag<cr>

	    " }}}

		" git-messenger {{{

			nnoremap <leader>gmm <cmd>GitMessenger<cr>

		" }}}

		" neoformat {{{

	    	nnoremap <leader>nfr <cmd>Neoformat<cr>
			nnoremap <leader>nfv :Neoformat!<space>

		" }}}

		" rainbow_levels {{{

	        nnoremap <leader>rlt <cmd>RainbowLevelsToggle<cr>

		" }}}

		" CtrlSF {{{

		    nnoremap <leader>sfg :CtrlSF<space>
		    nnoremap <leader>sfr :CtrlSF -R -I<space>

		" }}}

		" tagbar {{{

		    nnoremap <leader>tbt <cmd>TagbarToggle<cr>

		" }}}

		" mundo {{{

			nnoremap <leader>mut <cmd>MundoToggle<cr>

		" }}}

		" easymotion {{{


		" }}}

		" vim-easy-align {{{

    	    xmap ga <plug>(easyalign)
	        nmap ga <Plug>(EasyAlign)

		" }}}

	" }}

" }