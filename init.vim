" { 

    let g:config_file_list = [
        \ 'variable.vim',
        \ 'function.vim',
        \ 'base.vim',
        \ 'command.vim',
        \ 'autocommand.vim',
        \ 'keymap.vim',
        \ 'path.vim',
        \ '.plugin.vim',
        \ 'interface.vim',
        \ ]

    let g:vim_config_root = expand('<sfile>:p:h')

    for s:fname in g:config_file_list
        execute printf('source %s/%s/.init/%s', g:vim_config_root, '.vim', s:fname)
    endfor

" }