"{

	"{{ variables
		

	"}}

	"{{ options 

		let g:Lf_WorkingDirectoryMode = 'Ac'
		let g:Lf_WorkingDirectory = finddir('.git')


		let g:Lf_PreviewInPopup = 1
		let g:Lf_ShowHidden = 1
		let g:Lf_ReverseOrder = 1

		" let g:Lf_WindowPosition='fullScreen'
		let g:Lf_ShowRelativePath=1
		let g:Lf_CursorBlink=1

		let g:Lf_WildIgnore = {
			\ 'dir': ['.git'],
		\ }

		let g:Lf_HighlightIndividual = 0

	"}}

	"{{ mappings 

		nmap <Leader>g :Leaderf rg<CR>
		nmap <Leader>m :Leaderf mru<CR>
		nmap <Leader>t :Leaderf tag<CR>

	"}}

	"{{ autocommands 

	"}}

"}