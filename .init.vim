" { 

    let g:config_file_list = [
        \ 'variables.vim',
        \ 'functions.vim',
        \ 'sets.vim',
        \ 'keymaps.vim',
        \ 'commands.vim',
        \ 'autocommands.vim',
        \ ] 

    let g:vim_config_root = expand('<sfile>:p:h')

    for s:fname in g:config_file_list
        execute printf('source %s/%s/.init/%s', g:vim_config_root, '.vim', s:fname)
    endfor

" }