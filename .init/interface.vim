" {

    set t_Co=256

    set title

    set laststatus=2 " 总是显示状态栏

    " set statusline=  " 状态栏设置

    set number " 显示行号

    set relativenumber " 显示相对行号

    set signcolumn=yes " 总是显示侧边栏

    set showtabline=2 " 总是显示标签栏

    set list " 设置显示制表符等隐藏字符

    set showcmd " 显示还没有输入完整的命令

    " set showmode " 左下角显示当前模式
    set noshowmode " 左下角隐藏当前模式

    set splitbelow " 设置新的垂直分割窗口在下侧

    set splitright " 设置新的垂直分割窗口在右侧

    " set tabline=

    " set termguicolors

    set background=dark

    colorscheme gruvbox

    " highlight {{ 

        highlight CursorLine cterm=NONE ctermbg=241 ctermfg=green guibg=NONE guifg=NONE

        " highlight CursorColumn cterm=NONE ctermbg=241 ctermfg=green guibg=NONE guifg=NONE

        highlight MatchParen ctermbg=Yellow guibg=lightblue

    " }}

    "seoul256 {{{

        let g:seoul256_background = 233
        let g:seoul256_light_background = 256

    "}}}

    "gruvbox {{{

        let g:gruvbox_termcolors=16
        
    "}}}

" }