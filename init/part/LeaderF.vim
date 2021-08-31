"{

	"{{ variables
		

	"}}

	"{{ options 

		let g:Lf_WorkingDirectoryMode = 'Ac'
		" let g:Lf_WorkingDirectory = finddir('.git', '.root')


		let g:Lf_PreviewInPopup = 1
		let g:Lf_ShowHidden = 1
		let g:Lf_ReverseOrder = 1

	"}}

	"{{ mappings 

		nmap <Leader>g :Leaderf rg<CR>
		nmap <Leader>m :Leaderf mru<CR>

	"}}

	"{{ autocommands 

	"}}

"}