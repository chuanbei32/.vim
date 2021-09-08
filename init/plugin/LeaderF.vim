"{

	"{{ variables
		

	"}}

	"{{ options 

		" let g:Lf_WorkingDirectoryMode = 'Ac'
		" let g:Lf_WorkingDirectory = finddir('.root')


		let g:Lf_PreviewInPopup = 1
		let g:Lf_ShowHidden = 1
		let g:Lf_ReverseOrder = 1

		" let g:Lf_WindowPosition='fullScreen'
		let g:Lf_ShowRelativePath=1
		let g:Lf_CursorBlink=1

		let g:Lf_WildIgnore = {
			\ 'dir': ['.git', 'node_modules'],
		\ }

		let g:Lf_HighlightIndividual = 0

		let g:Lf_UseCache = 0
		let g:Lf_UseMemoryCache = 0

	"}}

	"{{ mappings 

		nmap <Leader>ff :Leaderf file<CR>
		nmap <Leader>fb :Leaderf buffer<CR>
		nmap <Leader>fg :Leaderf rg<CR>
		nmap <Leader>fm :Leaderf mru<CR>
		nmap <Leader>ft :Leaderf tag<CR>

	"}}

	"{{ autocommands 

	"}}

"}