"{

	"{{ variables
		

	"}}

	"{{ options 
	
		let g:ale_linters = {
		\    'javascript': ['eslint'],
		\    'css': ['stylelint'],
		\}
		let g:ale_fixers = {
		\    'javascript': ['eslint'],
		\    'css': ['stylelint'],
		\}
		let g:ale_fix_on_save = 1

		let g:ale_sign_column_always = 1
		let g:ale_sign_error = '●'
		let g:ale_sign_warning = '▶'

	"}}

	"{{ mappings 

		nmap <silent> <C-k> <Plug>(ale_previous_wrap)
		nmap <silent> <C-j> <Plug>(ale_next_wrap)

	"}}

	"{{ autocommands 

	"}}

"}