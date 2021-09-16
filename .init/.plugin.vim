" { 

    let g:config_file_list = [
        \ 'NERDTree.vim',
        \ 'NERDTree-git-plugin.vim',
        \ 'LeaderF.vim',
        \ 'rainbow.vim',
        \ 'ale.vim',
        \ 'delimitMate.vim',
        \ 'phpactor.vim',
        \ 'coc.vim',
        \ 'vimspector.vim',
        \ 'mundo.vim',
        \ 'vim-airline.vim',
        \ 'vim-airline-themes.vim',
        \ 'tagbar.vim',
        \ 'Ultisnips.vim',
        \ 'vim-devicons.vim',
        \ 'git-messenger.vim',
        \ 'neoformat.vim',
        \ ]

    let g:vim_plugins_config_root = expand('<sfile>:p:h')

    for s:fname in g:config_file_list
        execute printf('source %s/%s/%s', g:vim_plugins_config_root, '.plugin', s:fname)
    endfor

" }