" {

	autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

	autocmd BufWritePost $MYVIMRC source $MYVIMRC " 让配置变更立即生效

" }