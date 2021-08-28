"{

	"{{ variables
		

	"}}

	"{{ options

		if has('python3')
		    let g:gundo_prefer_python3 = 1
		endif

		let g:gundo_width = 30

	"}}

	"{{ mappings 

		nmap <Leader>gu :GundoToggle<CR>

	"}}

	"{{ autocommands 

	"}}

"}