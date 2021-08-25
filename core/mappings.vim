"{

	nmap <space> <leader>

	nmap LB 0 " 定义快捷键到行首

	nmap LE $ " 定义快捷键到行尾

	vnoremap <Leader>y "+y " 设置快捷键将选中文本块复制至系统剪贴板

	nmap <Leader>p "+p " 设置快捷键将系统剪贴板内容粘贴至 vim

	nmap <Leader>q :q<CR> " 定义快捷键关闭当前分割窗口

	nmap <Leader>W :w<CR> " 定义快捷键保存当前窗口内容

	nmap <Leader>WQ :wa<CR>:q<CR> " 定义快捷键保存所有窗口内容并退出 vim

	nmap <Leader>Q :qa!<CR> " 不做任何保存，直接退出 vim

	nmap <Leader>M % " 定义快捷键在结对符之间跳转

	"{{

		nnoremap nw <C-W><C-W> " 依次遍历子窗口

		nnoremap <Leader>lw <C-W>l " 跳转至右方的窗口

		nnoremap <Leader>hw <C-W>h " 跳转至左方的窗口

		nnoremap <Leader>kw <C-W>k " 跳转至上方的子窗口

		nnoremap <Leader>jw <C-W>j " 跳转至下方的子窗口

	"}}

	"{{
		nnoremap <Leader>lb <S-:> " 跳转至右方的缓冲区

		nnoremap <Leader>hb <C-W>h " 跳转至左方的缓冲区

		nnoremap <Leader>kb <C-W>k " 跳转至上方的缓冲区

		nnoremap <Leader>jb <C-W>j " 跳转至下方的缓冲区
	"}}

	"{{	
		nnoremap <Leader>lb <C-W>l " 跳转至右方的缓冲区

		nnoremap <Leader>hb <C-W>h " 跳转至左方的缓冲区

		nnoremap <Leader>kb <C-W>k " 跳转至上方的缓冲区

		nnoremap <Leader>jb <C-W>j " 跳转至下方的缓冲区
	"}}



"{