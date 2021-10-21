" {

	" 插入模式下用绝对行号
	autocmd InsertEnter * :set norelativenumber number

	" 普通模式下用相对行号
	autocmd InsertLeave * :set relativenumber

	" 重载配置文件「目前无效」
	" autocmd! BufWritePost .vimrc source ~/.vimrc

	" 修改背景色为透明
	autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

" }