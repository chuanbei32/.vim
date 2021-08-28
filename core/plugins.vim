"{ 

  let g:config_file_list = [
    \ 'NERDTree.vim',
    \ 'NERDTree-git-plugin.vim',
    \ 'LeaderF.vim',
    \ 'rainbow.vim',
    \ 'vim-airline.vim',
    \ 'vim-airline-themes.vim',
    \ 'ale.vim',
    \ 'delimitMate.vim',
    \ 'coc.vim',
    \ 'fzf.vim',
    \ 'vimspector.vim',
    \ 'test.vim',
    \ ]

  let g:vim_plugins_config_root = expand('<sfile>:p:h')
  for s:fname in g:config_file_list
    execute printf('source %s/%s/%s', g:vim_plugins_config_root, 'plugins', s:fname)
  endfor

"}