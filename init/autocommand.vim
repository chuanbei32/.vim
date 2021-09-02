" {

	autocmd BufEnter * silent! :lcd%:p:h
	
	autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

	autocmd! bufwritepost .vimrc source %

	" 插入模式下用绝对行号, 普通模式下用相对
	autocmd InsertEnter * :set norelativenumber number
	autocmd InsertLeave * :set relativenumber


	autocmd BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
	autocmd BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
	autocmd BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
	autocmd BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
	autocmd BufNewFile,BufRead *.cpp setlocal expandtab ts=2 sw=2
	autocmd BufNewFile,BufRead *.hpp setlocal expandtab ts=2 sw=2
	autocmd BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2
	autocmd BufNewFile,BufRead *.jade setlocal expandtab ts=2 sw=2

	augroup filetypedetect
	  autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
	  autocmd BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
	augroup END

	autocmd FileType nginx setlocal noet ts=4 sw=4 sts=4

	autocmd BufRead /tmp/mutt-* set textwidth=80

	autocmd BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
	" autocmd BufEnter *.go colorscheme nofrils-dark

	autocmd BufNewFile,BufReadPost *.scala setl shiftwidth=2 expandtab

	autocmd BufNewFile,BufRead *.lua setlocal noet ts=4 sw=4 sts=4

	autocmd FileType dockerfile set noexpandtab

	autocmd FileType fstab,systemd set noexpandtab
	autocmd FileType gitconfig,sh,toml set noexpandtab

	autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab

	autocmd FileType text setlocal textwidth=80 fo+=2t ts=2 sw=2 sts=2 expandtab
	autocmd BufNewFile,BufRead *.md,*.txt,*.adoc setlocal textwidth=80 fo+=2t ts=2 sw=2 sts=2 expandtab

	autocmd BufRead,BufNewFile MAINTAINERS,*.toml set ft=toml formatprg=toml-fmt

	autocmd BufRead,BufNewFile Fastfile,Appfile,Podfile set ft=ruby

	autocmd BufRead,BufNewFile *.workflow set ft=hcl

	autocmd BufRead,BufNewFile *.mips set ft=mips

	autocmd BufRead,BufNewFile *.njk,*.hbs set ft=html

	augroup Binary
	  autocmd!
	  autocmd BufReadPre  *.bin let &bin=1
	  autocmd BufReadPost *.bin if &bin | %!xxd
	  autocmd BufReadPost *.bin set ft=xxd | endif
	  autocmd BufWritePre *.bin if &bin | %!xxd -r
	  autocmd BufWritePre *.bin endif
	  autocmd BufWritePost *.bin if &bin | %!xxd
	  autocmd BufWritePost *.bin set nomod | endif
	augroup END

	autocmd FileType gitcommit setlocal spell

" }