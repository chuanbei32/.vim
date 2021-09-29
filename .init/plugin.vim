" coc {
    
    let g:coc_global_extensions = [ 
        \ 'coc-json', 
        \ 'coc-xml', 
        \ 'coc-yaml', 
        \ 'coc-vetur', 
        \ 'coc-toml', 
        \ 'coc-html', 
        \ 'coc-css', 
        \ 'coc-tsserver', 
        \ 'coc-svg', 
        \ 'coc-sql', 
        \ 'coc-sh', 
        \ 'coc-highlight', 
        \ 'coc-cssmodules', 
        \ 'coc-discord-rpc', 
        \ 'coc-emmet', 
        \ 'coc-graphql', 
        \ 'coc-html-css-support',
        \ '@yaegassy/coc-nginx', 
        \ 'coc-perl'
    \]

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()

    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    " phpactor {{

        let g:phpactorPhpBin = "/usr/local/iwork/php/8.0/bin/php"
        autocmd FileType php set iskeyword+=$
        autocmd FileType php setlocal omnifunc=phpactor#Complete
            
    " }}

" }


" asyncrun {
    

" }


" ultisnips {

    let g:UltiSnipsExpandTrigger="<Leader>\us"
    let g:UltiSnipsSnippetDirectories=["__ultisnips"]

" }

" ale {

    let g:ale_disable_lsp = 1

    let g:ale_completion_enabled = 0

    let g:ale_php_php_executable = '/usr/local/iwork/php/8.0/bin/php'
    let g:ale_php_phpcs_executable = '/iwork/project/.vim/__formats/php/PHP_CodeSniffer/vendor/bin/phpcs'
    let g:ale_php_phpcs_standard = 'PSR12'

    let g:ale_sign_column_always = 1

    " let g:ale_sign_error = '>>'
    " let g:ale_sign_warning = '--'

    " let g:ale_sign_error = '✗'
    " let g:ale_sign_warning = '⚡'

" }

" neoformat {

    let g:neoformat_php_phpcbf = {
        \ 'exe': '/iwork/project/.vim/__formats/php/PHP_CodeSniffer/vendor/bin/phpcbf',
        \ 'stdin': 1,
        \ 'args': ['--standard=PSR12', '-'],
        \ 'valid_exit_codes': [0, 1],
    \ } 

    let g:neoformat_enabled_php = ['phpcbf']

    " let g:neoformat_try_formatprg = 1

    " let g:neoformat_verbose = 1

    let g:neoformat_basic_format_retab = 1

    let g:neoformat_basic_format_trim = 1

    nnoremap <leader>\nf :Neoformat<CR>
    nnoremap <leader>\nfv :Neoformat!<Space>

" }

" vimspector {

    " let g:vimspector_enable_mappings = 'HUMAN'

    sign define vimspectorBP text=o             texthl=WarningMsg
    sign define vimspectorBPCond text=o?        texthl=WarningMsg
    sign define vimspectorBPDisabled text=o!    texthl=LineNr
    sign define vimspectorPC text=\ >           texthl=MatchParen
    sign define vimspectorPCBP text=o>          texthl=MatchParen
    sign define vimspectorCurrentThread text=>  texthl=MatchParen
    sign define vimspectorCurrentFrame text=>   texthl=Special


    nmap <silent><nowait><space>dn <Plug>VimspectorStepOver
    nmap <A-n> <Plug>VimspectorStepOver
    nmap <silent><nowait><space>db <Plug>VimspectorToggleBreakpoint
    nmap <A-b> <Plug>VimspectorToggleBreakpoint
    nmap <silent><nowait><space>ds <Plug>VimspectorContinue
    nmap <silent><nowait><space>dr <Plug>VimspectorRestart
    nmap <silent><nowait><space>dp <Plug>VimspectorPause
    nmap <silent><nowait><space>dt <Plug>VimspectorStop
    nmap <silent><nowait><space>df <Plug>VimspectorAddFunctionBreakpoint
    nmap <silent><nowait><space>dc <Plug>VimspectorToggleConditionalBreakpoint
    nmap <silent><nowait><space>do <Plug>VimspectorStepOut
    nmap <A-o> <Plug>VimspectorStepOut
    nmap <silent><nowait><space>di <Plug>VimspectorStepInto
    nmap <A-i> <Plug>VimspectorStepInto
    nmap <silent><nowait><space>dq :<C-u>VimspectorReset<CR>
    nmap <silent><nowait><space>dlc <Plug>VimspectorShowOutput Console<CR>
    nmap <silent><nowait><space>dld <Plug>VimspectorShowOutput stderr<CR>
    nmap <silent><nowait><space>dlo <Plug>VimspectorShowOutput Vimspector-out<CR>
    nmap <silent><nowait><space>dle <Plug>VimspectorShowOutput Vimspector-err<CR>
    nmap <silent><nowait><space>dls <Plug>VimspectorShowOutput server<CR>
    nmap <silent><nowait><space>dlt <Plug>VimspectorShowOutput Telemetry<CR>
    nmap <silent><nowait><space>de :<C-u>VimspectorEval<space>
    nmap <silent><nowait><space>dw :<C-u>VimspectorWatch<space>
    nmap <A-w> :<C-u>VimspectorWatch<space>

    func! s:CustomiseUI()
        call win_gotoid( g:vimspector_session_windows.code )
        " Clear the existing WinBar created by Vimspector
        nunmenu WinBar
        " Cretae our own WinBar
        nnoremenu WinBar.Kill :call vimspector#Stop( { 'interactive': v:true } )<CR>
        nnoremenu WinBar.Continue :call vimspector#Continue()<CR>
        nnoremenu WinBar.Pause :call vimspector#Pause()<CR>
        nnoremenu WinBar.Step\ Over  :call vimspector#StepOver()<CR>
        nnoremenu WinBar.Step\ In :call vimspector#StepInto()<CR>
        nnoremenu WinBar.Step\ Out :call vimspector#StepOut()<CR>
        nnoremenu WinBar.Restart :call vimspector#Restart()<CR>
        nnoremenu WinBar.Exit :call vimspector#Reset()<CR>
    endfunction

    augroup MyVimspectorUICustomistaion
        autocmd!
        autocmd User VimspectorUICreated call s:CustomiseUI()
    augroup END

" }

" leaderF {

    " let g:Lf_WorkingDirectoryMode = 'Ac'
    " let g:Lf_WorkingDirectory = finddir('.root')

    let g:Lf_PreviewInPopup = 1
    let g:Lf_ShowHidden = 1
    let g:Lf_ReverseOrder = 1

    " let g:Lf_WindowPosition='fullScreen'
    let g:Lf_ShowRelativePath=1
    let g:Lf_CursorBlink=1

    let g:Lf_WildIgnore = {
        \ 'dir': ['.git', 'node_modules'],
    \ }

    let g:Lf_HighlightIndividual = 0

    let g:Lf_UseCache = 0
    let g:Lf_UseMemoryCache = 0

    nmap <Leader>f <Nop>
    nmap <Leader>b <Nop>
    
    nmap <Leader>\ff :Leaderf file<CR>
    nmap <Leader>\fb :Leaderf buffer<CR>
    nmap <Leader>\fg :Leaderf rg<CR>
    nmap <Leader>\fm :Leaderf mru<CR>
    nmap <Leader>\ft :Leaderf tag<CR>

" }

" mundo {

    let g:mundo_auto_preview = 1

    nmap <Leader>\mun :MundoToggle<CR>
" }

" tagbar {

    let g:tagbar_width = 30

    nmap <leader>\tb :TagbarToggle<CR>

    " autocmd VimEnter * :TagbarToggle

" }

" NERDTree {

    let NERDTreeShowBookmarks=1
    let NERDTreeShowHidden = 1
    let g:NERDTreeWinSize=30

    " let NERDTreeDirArrowExpandable = "▶"
    " let NERDTreeDirArrowCollapsible = "▼"

    let g:NERDTreeDirArrowExpandable = '+'
    let g:NERDTreeDirArrowCollapsible = '-'

    nnoremap <leader>\nt :NERDTreeToggle<CR>

    " autocmd vimenter * NERDTree

    " autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

    " autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
        \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" }

" NERDTree-git-plugin {

    " let g:NERDTreeGitStatusIndicatorMapCustom = {
        " \ "Modified"  : "✹",
        " \ "Staged"    : "✚",
        " \ "Untracked" : "✭",
        " \ "Renamed"   : "➜",
        " \ "Unmerged"  : "═",
        " \ "Deleted"   : "✖",
        " \ "Dirty"     : "✗",
        " \ "Clean"     : "✔︎",
        " \ 'Ignored'   : '☒',
        " \ "Unknown"   : "?"
        " \ }

    let g:NERDTreeGitStatusUseNerdFonts = 1
    let g:NERDTreeGitStatusShowIgnored = 1
    let g:NERDTreeGitStatusConcealBrackets = 1
    let g:NERDTreeGitStatusShowClean = 1
    let g:NERDTreeGitStatusUntrackedFilesMode = 'all'

" }

" vim-airline-themes {

    let g:airline_theme='gruvbox'

"}

" vim-airline {

    let g:airline#extensions#tabline#enabled = 1
    " let g:airline#extensions#tabline#left_sep = ' '
    " let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

    let g:airline_powerline_fonts = 1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " let g:airline_statusline_ontop = 1
   
"}

" vim-devicons {

    let g:webdevicons_conceal_nerdtree_brackets = 0

    let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

    let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0

    let g:WebDevIconsUnicodeGlyphDoubleWidth  = 1

    let g:WebDevIconsUnicodeDecorateFileNodes = 1

"}

" git-messenger {
    
    let g:git_messenger_close_on_cursor_moved=0

    nmap <Leader>\gmo :GitMessenger<CR>
    nmap <Leader>\gmc :GitMessengerClose<CR>

" }

" nerdcommenter {
    
    let g:NERDSpaceDelims = 1
    let g:NERDDefaultAlign = 'left'
    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDToggleCheckAllLines = 1

    let g:NERDCustomDelimiters = { 
        \ 'php': { 'left': '/*','right': '*/' },
        \ 'html': { 'left': '<!--','right': '-->' },
        \ 'py': { 'left': '#' },'sh': { 'left': '#' },
        \ 'css': { 'left': '/*','right': '*/' },
        \ 'js': { 'left': '/*','right': '*/' },
    \ }

" }

