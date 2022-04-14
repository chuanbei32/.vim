" {

	if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
    endif

    source ~/.vim/.init/variable.vim

    source ~/.vim/.init/function.vim

    filetype plugin on

    source ~/.vim/.init/option.vim

    source ~/.vim/.init/map.vim

    scriptencoding utf-8

    source ~/.vim/.init/plug.vim

    source ~/.vim/.init/command.vim

    syntax enable on

    source ~/.vim/.init/highlight.vim

    packadd! gruvbox-material

    colorscheme gruvbox-material

    set background=dark

" }