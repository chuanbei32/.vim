"{

    set t_Co=256

    if has("termguicolors")
        " https://github.com/termstandard/colors
        " set t_8f=^[[38;2;%lu;%lu;%lum
        " set t_8b=^[[48;2;%lu;%lu;%lum
        " set termguicolors
    endif

    " let g:gruvbox_italics=1
    " let g:gruvbox_italicize_strings=1
    " let g:gruvbox_filetype_hi_groups = 1
    " let g:gruvbox_plugin_hi_groups = 1

    set background=dark

    colorscheme seoul256


    highlight CursorLine   cterm=NONE ctermbg=241 ctermfg=green guibg=NONE guifg=NONE

    " highlight CursorColumn cterm=NONE ctermbg=241 ctermfg=green guibg=NONE guifg=NONE


    "{{seoul256

        let g:seoul256_background = 233
        let g:seoul256_light_background = 256

    "}}

"}