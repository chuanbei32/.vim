"{

	"{{ variables
		

	"}}

	"{{ options 

		let NERDTreeShowHidden = 1
		let g:NERDTreeWinSize=30
		let g:nerdtree_tabs_open_on_console_startup = 1
		let g:nerdtree_tabs_focus_on_files = 1

	"}}

	"{{ mappings 

		nnoremap <leader>n :NERDTreeFocus<CR>

	"}}

	"{{ autocommands 

		" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

		" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    		\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
	"}}

"}