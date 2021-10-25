" {

	" let mapleader="\<space>"
	" let g:maplocalleader = ";"

	inoremap ( ()<Left>
	inoremap { {}<Left>
	inoremap [ []<Left>

	inoremap ' ''<Left>
	inoremap " ""<Left>
	inoremap ` ``<Left>

	xnoremap < <gv
	xnoremap > >gv|

	noremap < <cmd>tabpre<cr>
	noremap > <cmd>tabnex<cr>

	nnoremap <tab> V>
	vnoremap <tab> >gv

	nnoremap <s-tab> V<
	vnoremap <s-tab> <gv

    inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()

    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	nnoremap <esc><esc> <cmd>nohlsearch<cr>

	vnoremap <leader>cc :s/^/\/\//<cr>:noh<cr>
	vnoremap <leader>cu :s/\/\///<cr>:noh<cr>

	nnoremap <leader>sc :%s/\<<c-r>=expand("<cword>")<cr>\>/
	nnoremap <leader>rg :Leaderf rg -e <c-r>=expand("<cword>")<cr>

	noremap <leader>sh <cmd>shell<cr>
	noremap <leader>tm <cmd>terminal<cr>

	" a - z {{

		" a A {{{

			" AsyncRun {{{{

		    	nnoremap <leader>arr :AsyncRun -raw<space>
    			nnoremap <leader>arg :AsyncRun! -raw<space>

			" }}}}

		" }}}
		" b B {{{

			" buffer {{{{

				nnoremap <leader>bx <c-^>

				nnoremap <leader>bl <cmd>buffers<cr>

				nnoremap <leader>bs :buffer<space>

				" nnoremap <leader>ba :badd<space>

				nnoremap <leader>bn <cmd>bnext<cr>
				nnoremap <leader>bp <cmd>bprevious<cr>

				nnoremap <leader>bd :bdelete<space>

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

				nmap <silent><nowait><leader>dn <Plug>VimspectorStepOver
			    nmap <silent><nowait><leader>db <Plug>VimspectorToggleBreakpoint
			    nmap <silent><nowait><leader>ds <Plug>VimspectorContinue
			    nmap <silent><nowait><leader>dr <Plug>VimspectorRestart
			    nmap <silent><nowait><leader>dp <Plug>VimspectorPause
			    nmap <silent><nowait><leader>dt <Plug>VimspectorStop
			    nmap <silent><nowait><leader>df <Plug>VimspectorAddFunctionBreakpoint
			    nmap <silent><nowait><leader>dc <Plug>VimspectorToggleConditionalBreakpoint
			    nmap <silent><nowait><leader>do <Plug>VimspectorStepOut
			    nmap <silent><nowait><leader>di <Plug>VimspectorStepInto
			    nmap <silent><nowait><leader>dq :<C-u>VimspectorReset<CR>
			    nmap <silent><nowait><leader>dlc <Plug>VimspectorShowOutput Console<CR>
			    nmap <silent><nowait><leader>dld <Plug>VimspectorShowOutput stderr<CR>
			    nmap <silent><nowait><leader>dlo <Plug>VimspectorShowOutput Vimspector-out<CR>
			    nmap <silent><nowait><leader>dle <Plug>VimspectorShowOutput Vimspector-err<CR>
			    nmap <silent><nowait><leader>dls <Plug>VimspectorShowOutput server<CR>
			    nmap <silent><nowait><leader>dlt <Plug>VimspectorShowOutput Telemetry<CR>
			    nmap <silent><nowait><leader>de :<C-u>VimspectorEval<leader>
			    nmap <silent><nowait><leader>dw :<C-u>VimspectorWatch<leader>

			" }}}}

			" DoxygenToolkit {{{{

		        nmap <leader>da <cmd>DoxAuthor<cr>
		  	  	nmap <leader>dd <cmd>Dox<cr>
		    	nmap <leader>dc <cmd>DoxLic<cr>

			" }}}}

			" dirvish {{{{

			    nmap <leader>dd <Plug>(dirvish_up)

			" }}}}

		" }}}
		" e E
		" f F {{{

			" leaderF {{{{

				nmap <Leader>f <nop>

			    nmap <leader>ffe :Leaderf file<cr>
			    nmap <leader>ffn :Leaderf function<cr>
			    nmap <leader>fb :Leaderf buffer<cr>
			    nmap <leader>fg :Leaderf rg -e<space>
			    nmap <leader>fm :Leaderf mru<cr>
			    nmap <leader>ft :Leaderf tag<cr>

			" }}}}

		"}}}
		" g G {{{

			nnoremap gk k
			nnoremap gj j
			nnoremap gh g^
			nnoremap gH ^
			nnoremap gl g$
			nnoremap gL g_

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

			" rainbow_levels {{{{

		        nmap <leader>rt :RainbowLevelsToggle<cr>

			" }}}}

		" }}}
		" s S {{{

			" CtrlSF {{{{

			    nmap <Leader>sfg :CtrlSF<space>
			    nmap <Leader>sfr :CtrlSF -R -I<space>

			" }}}}

		" }}}
		" t T {{{

			" tab {{{{

				nnoremap <leader>tfe :tabedit<space>
				nnoremap <leader>tff :tabfind<space>
				nnoremap <leader>ts <cmd>tabs<cr>

				nnoremap <leader>tn <cmd>tabnext<cr>
				nnoremap <leader>tp <cmd>tabprev<cr>

				nnoremap <leader>tc <cmd>tabclose<cr>
				nnoremap <leader>ta <cmd>tabonly<cr>

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

			    nmap <leader>\tb :TagbarToggle<cr>

			" }}}}

		" }}}

		" u U {{{

			" mundo {{{{

    			nmap <leader>un :MundoToggle<cr>

			" }}}}

		" }}}
		" v V
		" w W {{{

			" window {{{{

				nnoremap <leader>wW <cmd>wall<cr> " 保存
				nnoremap <leader>wQ <cmd>qall<cr> " 退出
				nnoremap <leader>wA <cmd>wqall<cr> " 保存退出
				
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