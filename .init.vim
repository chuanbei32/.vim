" { 
    
    source ~/.vim/.init/function.vim
    
    filetype plugin on

    source ~/.vim/.init/option.vim

    scriptencoding utf-8

    source ~/.vim/.init/variable.vim

    source ~/.vim/.init/command.vim

    source ~/.vim/.init/map.vim

    packloadall!

    syntax enable on

    packadd! gruvbox-material

    colorscheme gruvbox-material

    silent! call mkdir(expand('~/.vim/_backupfiles'), 'p', 0755)
    silent! call mkdir(expand('~/.vim/_swapfiles'), 'p', 0755)
    silent! call mkdir(expand('~/.vim/_swapfiles'), 'p', 0755)

" }