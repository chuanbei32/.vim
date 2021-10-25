" {

	" template {{{
		

	" }}}	

	" Event {{

		" BufWritePost 把整个缓冲区写回到文件后 {{{

			" 重载配置文件「目前无效」
			" autocmd! BufWritePost .vimrc source ~/.vimrc

		" }}}


		" VimEnter 完成所有的初始化步骤后 {{{

			" 修改背景色为透明
			autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

			" 自动开启 tagbar 插件
    		autocmd VimEnter * :TagbarToggle

		" }}}


		" InsertLeave 离开插入模式时 {{{

			" 普通模式下用相对行号
			autocmd InsertLeave * :set relativenumber

			" 普通模式下开启折行
			autocmd InsertLeave * :set wrap

		" }}}

		" InsertEnter 刚开始插入模式之前, 也适用于替换模式和虚拟替换模式 {{{
		
			" 插入模式下用绝对行号
			autocmd InsertEnter * :set norelativenumber number

			" 插入模式下关闭折行
			autocmd InsertEnter * :set nowrap

		" }}}

	" }}

	" Custom Event {{


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

	" }}

" }