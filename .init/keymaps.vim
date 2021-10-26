" {

	" let mapleader="\<space>"
	" let g:maplocalleader = ";"

	xnoremap < <gv
	xnoremap > >gv|
	nnoremap < <cmd>tabpre<cr>
	nnoremap > <cmd>tabnex<cr>

	nnoremap <tab> V>
	vnoremap <tab> >gv
	inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"

	nnoremap <s-tab> V<
	vnoremap <s-tab> <gv
	inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

	" a - z {{

		" a A {{{

			" AsyncRun {{{{

		    	nnoremap <leader>arr :AsyncRun -raw<space>
    			nnoremap <leader>arg :AsyncRun! -raw<space>

			" }}}}

		" }}}
		" b B {{{

			" buffer {{{{

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

			" }}}}

		" }}}
		" c C
		" d D {{{

			" vimspector {{{{

				nnoremap <silent><nowait><leader>dn <Plug>VimspectorStepOver
			    nnoremap <silent><nowait><leader>db <Plug>VimspectorToggleBreakpoint
			    nnoremap <silent><nowait><leader>ds <Plug>VimspectorContinue
			    nnoremap <silent><nowait><leader>dr <Plug>VimspectorRestart
			    nnoremap <silent><nowait><leader>dp <Plug>VimspectorPause
			    nnoremap <silent><nowait><leader>dt <Plug>VimspectorStop
			    nnoremap <silent><nowait><leader>df <Plug>VimspectorAddFunctionBreakpoint
			    nnoremap <silent><nowait><leader>dc <Plug>VimspectorToggleConditionalBreakpoint
			    nnoremap <silent><nowait><leader>do <Plug>VimspectorStepOut
			    nnoremap <silent><nowait><leader>di <Plug>VimspectorStepInto
			    nnoremap <silent><nowait><leader>dq :<C-u>VimspectorReset<CR>
			    nnoremap <silent><nowait><leader>dlc <Plug>VimspectorShowOutput Console<CR>
			    nnoremap <silent><nowait><leader>dld <Plug>VimspectorShowOutput stderr<CR>
			    nnoremap <silent><nowait><leader>dlo <Plug>VimspectorShowOutput Vimspector-out<CR>
			    nnoremap <silent><nowait><leader>dle <Plug>VimspectorShowOutput Vimspector-err<CR>
			    nnoremap <silent><nowait><leader>dls <Plug>VimspectorShowOutput server<CR>
			    nnoremap <silent><nowait><leader>dlt <Plug>VimspectorShowOutput Telemetry<CR>
			    nnoremap <silent><nowait><leader>de :<C-u>VimspectorEval<leader>
			    nnoremap <silent><nowait><leader>dw :<C-u>VimspectorWatch<leader>

			" }}}}

			" DoxygenToolkit {{{{

		        nnoremap <leader>da <cmd>DoxAuthor<cr>
		  	  	nnoremap <leader>dd <cmd>Dox<cr>
		    	nnoremap <leader>dc <cmd>DoxLic<cr>

			" }}}}

			" dirvish {{{{

			    nnoremap <leader>dd <Plug>(dirvish_up)

			" }}}}

		" }}}
		" e E
		" f F {{{

			" leaderF {{{{

				nnoremap <Leader>f <nop>

			    nnoremap <leader>ffe :Leaderf file<cr>
			    nnoremap <leader>ffn :Leaderf function<cr>
			    nnoremap <leader>fb :Leaderf buffer<cr>
			    nnoremap <leader>fg :Leaderf rg -e<space>
			    nnoremap <leader>fm :Leaderf mru<cr>
			    nnoremap <leader>ft :Leaderf tag<cr>

			" }}}}

		"}}}
		" g G {{{

			nnoremap gh g^
			nnoremap gH ^
			nnoremap gl g$
			nnoremap gL g_
			nnoremap gk k
			nnoremap gj j

			" git-blame {{{{

				nnoremap <leader>gb <cmd>GitBlame<cr>

			" }}}}

			" git-messenger {{{{

				nnoremap <leader>gm <cmd>GitMessenger<cr>

			" }}}}

		" }}}
		" h H
		" i I
		" j J {{{

			nnoremap j gj
			xnoremap j gj

		" }}}
		" k K {{{

			nnoremap k gk
			xnoremap k gk

		" }}}
		" l L
		" m M
		" n N {{{

			nnoremap <leader>nh <cmd>nohlsearch<cr>

			" neoformat {{{{

		    	nnoremap <leader>nf <cmd>Neoformat<cr>
    			nnoremap <leader>nfv :Neoformat!<space>

			" }}}}

		" }}}
		" o O
		" p P
		" q Q {{{

		" }}}
		" r R {{{

			nnoremap <leader>rg :Leaderf rg -e <c-r>=expand("<cword>")<cr>

			" rainbow_levels {{{{

		        nnoremap <leader>rt :RainbowLevelsToggle<cr>

			" }}}}

		" }}}
		" s S {{{

			noremap <leader>sh <cmd>shell<cr>
			nnoremap <leader>sc :%s/\<<c-r>=expand("<cword>")<cr>\>/

			" CtrlSF {{{{

			    nnoremap <Leader>sfg :CtrlSF<space>
			    nnoremap <Leader>sfr :CtrlSF -R -I<space>

			" }}}}

		" }}}
		" t T {{{

			noremap <leader>tm <cmd>terminal<cr>

			" tab {{{{

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

				nnoremap <a-1> <cmd>tabn 1<cr>
				nnoremap <a-2> <cmd>tabn 2<cr>
				nnoremap <a-3> <cmd>tabn 3<cr>
				nnoremap <a-4> <cmd>tabn 4<cr>
				nnoremap <a-5> <cmd>tabn 5<cr>
				nnoremap <a-6> <cmd>tabn 6<cr>
				nnoremap <a-7> <cmd>tabn 7<cr>
				nnoremap <a-8> <cmd>tabn 8<cr>
				nnoremap <a-9> <cmd>tabn 9<cr>
				nnoremap <a-0> <cmd>tabn 10<cr>

				inoremap <a-1> <ESC><cmd>tabn 1<cr>
				inoremap <a-2> <ESC><cmd>tabn 2<cr>
				inoremap <a-3> <ESC><cmd>tabn 3<cr>
				inoremap <a-4> <ESC><cmd>tabn 4<cr>
				inoremap <a-5> <ESC><cmd>tabn 5<cr>
				inoremap <a-6> <ESC><cmd>tabn 6<cr>
				inoremap <a-7> <ESC><cmd>tabn 7<cr>
				inoremap <a-8> <ESC><cmd>tabn 8<cr>
				inoremap <a-9> <ESC><cmd>tabn 9<cr>
				inoremap <a-0> <ESC><cmd>tabn 10<cr>

				" nnoremap <a-j>     <cmd>tabnext<cr>
				" nnoremap <a-k>     <cmd>tabprevious<cr>
				" nnoremap <a-[>     <cmd>tabprevious<cr>
				" nnoremap <a-]>     <cmd>tabnext<cr>
				" nnoremap <c-tab>   <cmd>tabnext<cr>
				" nnoremap <c-s-tab> <cmd>tabprevious<cr>
				" nnoremap <c-s-j>   <cmd>tabnext<cr>
				" nnoremap <c-s-k>   <cmd>tabprevious<cr>
				" nnoremap <a-{> <cmd>-tabmove<cr>
				" nnoremap <a-}> <cmd>+tabmove<cr>

			" }}}}

			" tagbar {{{{

			    nnoremap <leader>\tb :TagbarToggle<cr>

			" }}}}

		" }}}

		" u U {{{

			" mundo {{{{

    			nnoremap <leader>un :MundoToggle<cr>

			" }}}}

		" }}}
		" v V {{{

			inoremap <leader>v <cmd>set paste<cr>

		" }}}
		" w W {{{

			" window {{{{

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

			" }}}}

		" }}}
		" x X
		" y Y
		" z Z

	" }}

	" ctrl {{

	" }}

	" alt {{

	" }}

	" quickfix {{

		" nnoremap <leader>qo :copen<space>
		nnoremap <leader>qo <cmd>copen<cr>
		nnoremap <leader>ql <cmd>clast<cr>
		nnoremap <leader>qf <cmd>cfirst<cr>
		nnoremap <leader>qn <cmd>cnext<cr>
		nnoremap <leader>qp <cmd>cprevious<cr>
		nnoremap <leader>qc <cmd>cclose<cr>
		nnoremap <leader>qe <cmd>cc<cr>

	" }}

	" session {{

		nnoremap <leader>sc <cmd>mksession!<cr>

	" }}

" }