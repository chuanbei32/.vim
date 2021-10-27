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

	nnoremap k gk
	xnoremap k gk

	nnoremap gh g^
	nnoremap gH ^
	nnoremap gl g$
	nnoremap gL g_
	nnoremap gk k
	nnoremap gj j
	
	nnoremap <leader>nh <cmd>nohlsearch<cr>
	inoremap <leader>sp <cmd>set paste<cr>

	" ctrl {{

	" }}

	" alt {{

	" }}

	" buffer {{

		" nnoremap <leader>ba :badd<space>
		nnoremap <leader>bx <c-^>
		nnoremap <leader>bl <cmd>buffers<cr>
		nnoremap <leader>bb :buffer<space>
		nnoremap <leader>bn <cmd>bnext<cr>
		nnoremap <leader>bp <cmd>bprevious<cr>
		nnoremap <leader>bd :bdelete<space>
		nnoremap <leader>bo <cmd>BufferOnly<cr>

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

		nnoremap <leader>ts <cmd>tabs<cr>

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

		nnoremap <leader>ss <cmd>mksession!<cr>

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

	    	nnoremap <leader>\ar :AsyncRun -raw<space>

		" }}}

		" vimspector {{{

			nnoremap <silent><nowait><leader>\dsn <Plug>VimspectorStepOver
		    nnoremap <silent><nowait><leader>\dsb <Plug>VimspectorToggleBreakpoint
		    nnoremap <silent><nowait><leader>\dss <Plug>VimspectorContinue
		    nnoremap <silent><nowait><leader>\dsr <Plug>VimspectorRestart
		    nnoremap <silent><nowait><leader>\dsp <Plug>VimspectorPause
		    nnoremap <silent><nowait><leader>\dst <Plug>VimspectorStop
		    nnoremap <silent><nowait><leader>\dsf <Plug>VimspectorAddFunctionBreakpoint
		    nnoremap <silent><nowait><leader>\dsc <Plug>VimspectorToggleConditionalBreakpoint
		    nnoremap <silent><nowait><leader>\dso <Plug>VimspectorStepOut
		    nnoremap <silent><nowait><leader>\dsi <Plug>VimspectorStepInto
		    nnoremap <silent><nowait><leader>\dsq :<C-u>VimspectorReset<CR>
		    nnoremap <silent><nowait><leader>\dslc <Plug>VimspectorShowOutput Console<CR>
		    nnoremap <silent><nowait><leader>\dsld <Plug>VimspectorShowOutput stderr<CR>
		    nnoremap <silent><nowait><leader>\dslo <Plug>VimspectorShowOutput Vimspector-out<CR>
		    nnoremap <silent><nowait><leader>\dsle <Plug>VimspectorShowOutput Vimspector-err<CR>
		    nnoremap <silent><nowait><leader>\dsls <Plug>VimspectorShowOutput server<CR>
		    nnoremap <silent><nowait><leader>\dslt <Plug>VimspectorShowOutput Telemetry<CR>
		    nnoremap <silent><nowait><leader>\dse :<C-u>VimspectorEval<leader>
		    nnoremap <silent><nowait><leader>\dsw :<C-u>VimspectorWatch<leader>

		" }}}

		" DoxygenToolkit {{{

	        nnoremap <leader>\dta <cmd>DoxAuthor<cr>
	  	  	nnoremap <leader>\dtd <cmd>Dox<cr>
	    	nnoremap <leader>\dtc <cmd>DoxLic<cr>

		" }}}

		" dirvish {{{

		    nnoremap <leader>\ddd <Plug>(dirvish_up)

		" }}}

		" leaderF {{{

		    nnoremap <leader>\fe <cmd>Leaderf file<cr>
		    nnoremap <leader>\fn <cmd>Leaderf function<cr>

		    nnoremap <leader>\fb <cmd>Leaderf buffer<cr>
		    nnoremap <leader>\fg :Leaderf rg -e<space>
		    nnoremap <leader>\fm <cmd>Leaderf mru<cr>
		    nnoremap <leader>\ft <cmd>Leaderf tag<cr>

	    " }}}

		" git-blame {{{

			nnoremap <leader>\gbb <cmd>GitBlame<cr>

		" }}}

		" git-messenger {{{

			nnoremap <leader>\gmm <cmd>GitMessenger<cr>

		" }}}

		" neoformat {{{

	    	nnoremap <leader>\nfr <cmd>Neoformat<cr>
			nnoremap <leader>\nfv :Neoformat!<space>

		" }}}

		" rainbow_levels {{{

	        nnoremap <leader>\rlt :RainbowLevelsToggle<cr>

		" }}}

		" CtrlSF {{{

		    nnoremap <Leader>\sfg :CtrlSF<space>
		    nnoremap <Leader>\sfr :CtrlSF -R -I<space>

		" }}}

		" tagbar {{{

		    nnoremap <leader>\tbt <cmd>TagbarToggle<cr>

		" }}}

		" mundo {{{

			nnoremap <leader>\mut <cmd>MundoToggle<cr>

		" }}}

		" easymotion {{{

	        noremap ; <Plug>(easymotion-prefix)

		" }}}

		" clever-f {{{

			noremap <leader>\cfe <Plug>(clever-f-repeat-forward)
			noremap ; <Plug>(clever-f-repeat-forward)
			noremap , <Plug>(clever-f-repeat-back)

		" }}}

	" }}

" }