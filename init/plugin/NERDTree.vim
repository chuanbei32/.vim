"{

	"{{ variables
		

	"}}

	"{{ options 

		let NERDTreeShowBookmarks=1
		let NERDTreeShowHidden = 1
		let g:NERDTreeWinSize=30

		let NERDTreeDirArrowExpandable = "▶"
		let NERDTreeDirArrowCollapsible = "▼"

	"}}

	"{{ mappings 

		nnoremap <leader>\nt :NERDTreeFocus<CR>

	"}}

	"{{ autocommands 

		autocmd vimenter * NERDTree

		" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

		" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    		\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
	"}}

"}