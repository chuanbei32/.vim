"{

	"{{ variables
		

	"}}

	"{{ options 

		let g:ycm_add_preview_to_completeopt = 0
		let g:ycm_show_diagnostics_ui = 0
		let g:ycm_server_log_level = 'info'
		let g:ycm_min_num_identifier_candidate_chars = 2
		let g:ycm_collect_identifiers_from_comments_and_strings = 1
		let g:ycm_complete_in_strings=1
		let g:ycm_key_invoke_completion = '<C-z>'
		set completeopt=menu,menuone

		noremap <c-z> <NOP>


		let g:ycm_language_server = [
		  \   {
		  \     'name': 'php',
		  \     'cmdline': [ '/usr/local/iwork/php/8.0/bin/php8', '-d', 'memory_limt=1024M', '/iwork/project/.vim/pack/vendor/start/phpactor/bin/phpactor', 'language-server' ],
		  \     'filetypes': [ 'php' ],
		  \   },
		  \ ]

	"}}

	"{{ mappings 


	"}}

	"{{ autocommands 

	"}}

"}