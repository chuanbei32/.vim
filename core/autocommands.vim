" {

autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" }