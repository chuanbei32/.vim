" {

	" Command {{

		" 保留当前buffer, 删除其他 buffer
		command! BufferOnly silent! execute "%bd|e#|bd#"

		" 删除当前buffer
		command! BufferCurrent silent! execute "bd%"

	" }}

	" Autocmd {{

		" 重载配置文件「目前无效」
		" autocmd! BufWritePost .vimrc source ~/.vimrc

		" 修改背景色为透明
		" autocmd VimEnter * highlight Normal guibg=NONE ctermbg=NONE 

		" 自动开启 tagbar 插件
		" autocmd VimEnter * :TagbarToggle

		" 普通模式下用相对行号
		autocmd InsertLeave * :set relativenumber

		" 普通模式下开启折行
		autocmd InsertLeave * :set wrap

		" 普通模式下关闭粘贴模式
		autocmd InsertLeave * :set nopaste
		
		" 插入模式下用绝对行号
		autocmd InsertEnter * :set norelativenumber number

		" 插入模式下关闭折行
		autocmd InsertEnter * :set nowrap

		autocmd FocusGained * checktime
		autocmd FocusGained,BufEnter * checktime
		autocmd CursorHold,CursorHoldI * checktime

	" }}

	" Augroup {{

		" 如果文件不存在保存文件时自动创建所需的父级目录
		augroup MkdirOnWrite
			autocmd!
			autocmd BufWritePre * :call g:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
		augroup END
		
		" 重置 Vimspector UI
	    augroup MyVimspectorUICustomistaion
	        autocmd!
	        autocmd User VimspectorUICreated call g:CustomiseUI()
	    augroup END

	    " 设置注释所用字符串
	    augroup Commentary
	        autocmd!
    		autocmd FileType php setlocal commentstring=//\ %s
    		autocmd FileType c setlocal commentstring=//\ %s
	    augroup END

	    " 设置空白显示方式
	    augroup Whitespace
	    	autocmd!
    		autocmd ColorScheme * highlight default ExtraWhitespace ctermbg=darkred guibg=darkred
			autocmd BufRead,BufNew * match ExtraWhitespace /\\\@<![\u3000[:space:]]\+$/
			autocmd InsertLeave * match ExtraWhitespace /\\\@<![\u3000[:space:]]\+$/ 
			autocmd InsertEnter * match ExtraWhitespace /\\\@<![\u3000[:space:]]\+\%#\@<!$/ 
	    augroup END

	" }}

" }