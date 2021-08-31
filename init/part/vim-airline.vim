"{

	"{{ variables
		

	"}}

	"{{ options 

		let g:airline#extensions#tabline#enabled = 1
		let g:airline#extensions#tabline#left_sep = ' '
		let g:airline#extensions#tabline#left_alt_sep = '|'
		let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

		let g:airline_powerline_fonts = 1

	    if !exists('g:airline_symbols')
	        let g:airline_symbols = {}
	    endif

		" let g:airline_statusline_ontop = 1
	"}}

	"{{ mappings 


	"}}

	"{{ autocommands 

	"}}

"}