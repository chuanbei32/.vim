"{

	"{{ variables
		

	"}}

	"{{ options 


	"}}

	"{{ mappings 

		inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()

		function! s:check_back_space() abort
		  let col = col('.') - 1
		  return !col || getline('.')[col - 1]  =~# '\s'
		endfunction
		
		inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	"}}

	"{{ autocommands 

	"}}

"}