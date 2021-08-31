"{

	nmap <space> <leader>

	inoremap <C-z> <C-x><C-o>

	"{{ Window

		nnoremap <Leader>wc <C-W>c " 

		nnoremap <Leader>wl <C-W>l " 跳转至右方的窗口
		nnoremap <S-Right> <C-W>l

		nnoremap <Leader>wh <C-W>h " 跳转至左方的窗口
		nnoremap <S-Left> <C-W>h 

		nnoremap <Leader>wk <C-W>k " 跳转至上方的窗口
		nnoremap <S-Up> <C-W>k

		nnoremap <Leader>wj <C-W>j " 跳转至下方的窗口
		nnoremap <S-Down> <C-W>j

	"}}

	"{{ Buffer

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

	"{{	Tab

		nnoremap <buffer> <Leader>tab :tabs<CR>

		nnoremap <buffer> <Leader>tn :tabnew<Space>
		nmap <C-t> :tabnew<CR>

		nnoremap <buffer> <Leader>tc :tabclose<CR>
		nnoremap <silent> <C-w> :tabclose<CR> 

		" nnoremap <buffer> <Leader>tn :tabn<CR>
		nnoremap <buffer> <Leader>tn gt
		nnoremap <C-Down> :tabprevious<CR>

		" nnoremap <buffer> <Leader>tp :tabp<CR>
		nnoremap <buffer> <Leader>tp gT
		nnoremap <C-Up> :tabnext<CR>

		nnoremap <buffer> <Leader>tf :tabfirst<CR>

		nnoremap <buffer> <Leader>tl :tablast<CR>

	"}}

	"{{	Shell

		nnoremap <Leader>sh :shell<CR>

		nnoremap <Leader>term :terminal<CR>

	"}}

	nmap LB 0 " 定义快捷键到行首

	nmap LE $ " 定义快捷键到行尾

	vnoremap <Leader>y "+y " 设置快捷键将选中文本块复制至系统剪贴板

	nmap <Leader>p "+p " 设置快捷键将系统剪贴板内容粘贴至 vim

	nmap <Leader>q :q<CR> " 定义快捷键关闭当前分割窗口

	nmap <Leader>W :w<CR> " 定义快捷键保存当前窗口内容

	nmap <Leader>WQ :wa<CR>:q<CR> " 定义快捷键保存所有窗口内容并退出 vim

	nmap <Leader>Q :qa!<CR> " 不做任何保存，直接退出 vim

	nmap <Leader>M % " 定义快捷键在结对符之间跳转

"{