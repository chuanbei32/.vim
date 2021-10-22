" {
	" 事件 {{

		" BufWritePost 把整个缓冲区写回到文件后 {{{

			" 重载配置文件「目前无效」
			" autocmd! BufWritePost .vimrc source ~/.vimrc

		" }}}


		" VimEnter 完成所有的初始化步骤后 {{{

			" 修改背景色为透明
			autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

		" }}}


		" InsertLeave 离开插入模式时 {{{

			" 普通模式下用相对行号
			autocmd InsertLeave * :set relativenumber

		" }}}

		" InsertEnter 刚开始插入模式之前, 也适用于替换模式和虚拟替换模式 {{{
		
			" 插入模式下用绝对行号
			autocmd InsertEnter * :set norelativenumber number
			autocmd InsertEnter * 	let mapleader="\\"

		" }}}


		" template {{{
		

		" }}}

	" }}

	" 自定义事件 {{


	" }}

" }