"{

	"{{ variables
		

	"}}

	"{{ options 

		" let NERDTreeMinimalUI = 1
		" let NERDTreeShowHidden = 1
		" let g:NERDTreeWinSize=30
		" let g:nerdtree_tabs_open_on_console_startup = 1
		" let g:nerdtree_tabs_focus_on_files = 1

	"}}

	"{{ mappings 

		nnoremap <leader>n :NERDTreeFocus<CR>
		nnoremap <C-n> :NERDTree<CR>
		nnoremap <C-t> :NERDTreeToggle<CR>
		nnoremap <C-f> :NERDTreeFind<CR>

	"}}

	"{{ autocommands 

	"}}

	" o 打开关闭文件或目录
	" e 以文件管理的方式打开选中的目录
	" t 在标签页中打开
	" T 在标签页中打开，但光标仍然留在 NERDTree
	" r 刷新光标所在的目录
	" R 刷新当前根路径
	" X 收起所有目录
	" p 小写，跳转到光标所在的上一级路径
	" P 大写，跳转到当前根路径
	" J 到第一个节点
	" K 到最后一个节点
	" I 显示隐藏文件
	" m 显示文件操作菜单
	" C 将根路径设置为光标所在的目录
	" u 设置上级目录为根路径
	" ctrl + w + w 光标自动在左右侧窗口切换
	" ctrl + w + r 移动当前窗口的布局位置
	" :tabc 关闭当前的 tab
	" :tabo   关闭所有其他的 tab
	" :tabp   前一个 tab
	" :tabn   后一个 tab
	" gT      前一个 tab
	" gt      后一个 tab
"}