" {

    set t_Co=256

    " set termguicolors

    set background=dark

    colorscheme gruvbox

    " highlight {{ 

        highlight CursorLine cterm=NONE ctermbg=241 ctermfg=green guibg=NONE guifg=NONE

        " highlight CursorColumn cterm=NONE ctermbg=241 ctermfg=green guibg=NONE guifg=NONE

    " }}

    "seoul256 {{{

        let g:seoul256_background = 233
        let g:seoul256_light_background = 256

    "}}}

    "gruvbox {{{

        let g:gruvbox_termcolors=16
        
    "}}}

" }