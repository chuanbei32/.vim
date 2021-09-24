"{

	"{{ variables
		

	"}}

	"{{ options 

		let g:neoformat_php_phpcbf = {
		    \ 'exe': '/iwork/project/.vim/__formats/php/PHP_CodeSniffer/vendor/bin/phpcbf',
		    \ 'stdin': 1,
		    \ 'args': ['--standard=PSR12', '-'],
		    \ 'valid_exit_codes': [0, 1],
		    \ }

		let g:neoformat_enabled_php = ['phpcbf']

		" let g:neoformat_try_formatprg = 1

		" let g:neoformat_verbose = 1

		let g:neoformat_basic_format_retab = 1

		let g:neoformat_basic_format_trim = 1

	"}}

	"{{ mappings 

		nnoremap <leader>nf :Neoformat<CR>
		nnoremap <leader>nfv :Neoformat!<Space>

	"}}

	"{{ autocommands 

		
	"}}

"}