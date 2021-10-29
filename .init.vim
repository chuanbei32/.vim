" { 
    
    " packloadall!
    
    let g:config_file_list = [
        \ 'option.vim',
        \ 'variable.vim',
        \ 'function.vim',
        \ 'command.vim',
        \ 'map.vim'
        \ ] 

    let g:vim_config_root = expand('<sfile>:p:h')

    for s:fname in g:config_file_list
        execute printf('source %s/%s/.init/%s', g:vim_config_root, '.vim', s:fname)
    endfor

    filetype plugin on

    syntax enable on

    scriptencoding utf-8

    packadd! gruvbox-material

    colorscheme gruvbox-material

    silent! call mkdir(expand('~/.vim/_backupfiles'), 'p', 0755)
    silent! call mkdir(expand('~/.vim/_swapfiles'), 'p', 0755)
    silent! call mkdir(expand('~/.vim/_swapfiles'), 'p', 0755)

" }