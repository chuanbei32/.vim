"{

	"{{ variables
		

	"}}

	"{{ options 


	"}}

	"{{ mappings 


	"}}

	"{{ autocommands 

	"}}

"}


let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Window_Height = 15

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
            \ 'javascript': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' },
            \ 'less': { 'left': '/**', 'right': '*/' }
        \ }

let g:NERDAltDelims_javascript = 1
let g:NERDDefaultNesting = 0


nmap tb :TagbarToggle<CR>

let g:tagbar_autofocus = 1
let g:tagbar_width = 30


let g:incsearch#auto_nohlsearch = 1


