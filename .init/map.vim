" {

	" let mapleader="\<space>"
	" let g:maplocalleader = ";"

    " Tab ====================================================================================

		nnoremap <tab> V>
		vnoremap <tab> >gv

		nnoremap <s-tab> V<
		vnoremap <s-tab> <gv

    " 移动「上下左右」 ====================================================================================

		nnoremap j gj
		xnoremap j gj
		nnoremap <down> gj
		xnoremap <down> gj
		nnoremap gj j

		nnoremap k gk
		xnoremap k gk
		nnoremap <up> gk
		xnoremap <up> gk
		nnoremap gk k

		nnoremap gh g^
		nnoremap gH ^
		nnoremap gl g$
		nnoremap gL g_

    " 查找「上下左右」 ====================================================================================

		nnoremap gsj *
		nnoremap gsk #

    " ====================================================================================

		" 搜索替换光标下单词「单行」
		nnoremap grl :s/<c-r><c-w>//<left>

		" 搜索替换光标下单词「全局」
		nnoremap grg :%s/<c-r><c-w>//g<left>

		" 取消高亮
		nnoremap <leader>nhs <cmd>nohlsearch<cr>

		" 清楚行尾空格
		nnoremap <leader>fws <cmd>%s/\\\@<!\s\+$//<cr>

		" 开启插入模式下粘贴模式
		inoremap <leader>isp <cmd>set paste<cr>

		" jump「跳转」 {{
			" <c-o> 上一个位置
			" <c-i> 下一个位置
		" }}

		" change「变更」 {{
			" g; 上一个位置
			" g, 下一个位置
			" u 撤销
			" <c-r> 重做
		" }}

		" fold「折叠」 {{

		" }}

		" register「寄存器」/macro「宏」 {{

		" }}

		" mark「标记」 {{

		" }}

		" session「会话」 {{

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
			nnoremap > <cmd>tabnext<cr>
			xnoremap > >gv|

			nnoremap <leader>tp <cmd>tabprev<cr>
			nnoremap < <cmd>tabprev<cr>
			xnoremap < <gv

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

" }