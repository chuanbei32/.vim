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
        \ 'coc-emmet', 
        \ 'coc-graphql', 
        \ 'coc-html-css-support',
        \ '@yaegassy/coc-nginx', 
        \ 'coc-perl',
        \ 'coc-lua',
    \ ]

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()

    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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


" test {
    
" }

" asynctasks {
    
" }

" asyncrun {
    
    let g:asyncrun_open = 8

" }
" ultisnips {
    
    set runtimepath+=~/.vim/__ultisnips

    let g:UltiSnipsExpandTrigger="<Leader>\us"
    let g:UltiSnipsSnippetDirectories=["__ultisnips"]

" }

" DoxygenToolkit {
    
    let g:DoxygenToolkit_briefTag_funcName = "yes"
    let g:DoxygenToolkit_briefTag_pre = "@brief "
    let g:DoxygenToolkit_briefTag_post = ""

    let g:DoxygenToolkit_templateParamTag_pre = "@tparam "
    let g:DoxygenToolkit_templateParamTag_post  = ""

    let g:DoxygenToolkit_paramTag_pre = "@param "
    let g:DoxygenToolkit_paramTag_post = ""

    let g:DoxygenToolkit_throwTag_pre = "@throw "
    let g:DoxygenToolkit_throwTag_post = ""

    let g:DoxygenToolkit_returnTag = "@return "

    let g:DoxygenToolkit_fileTag = "@file "

    let g:DoxygenToolkit_dateTag = "@date "

    let g:DoxygenToolkit_authorTag = "@author "

    let g:DoxygenToolkit_versionTag = "@version "
    let g:DoxygenToolkit_versionString = "1.0.0"

    let g:DoxygenToolkit_blockTag = "@name "

    let g:DoxygenToolkit_classTag = "@class "

    let g:DoxygenToolkit_authorName = "chuanbei32"

    let g:doxygen_enhanced_color = 1

    nmap <leader>da <cmd>DoxAuthor<cr>
    nmap <leader>dd <cmd>Dox<cr>
    nmap <leader>dc <cmd>DoxLic<cr>

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

    nmap <Leader>f <nop>

    nmap <leader>ffe :Leaderf file<cr>
    nmap <leader>ffn :Leaderf function<cr>
    nmap <leader>fb :Leaderf buffer<cr>
    nmap <leader>fg :Leaderf rg -e<space>
    nmap <leader>fm :Leaderf mru<cr>
    nmap <leader>ft :Leaderf tag<cr>

" }

" mundo {

    let g:mundo_auto_preview = 1

    nmap <leader>un :MundoToggle<cr>

" }

" tagbar {

    let g:tagbar_width = 35

    nmap <leader>tb :TagbarToggle<cr>

    " autocmd VimEnter * :TagbarToggle
" }

" vim-airline-themes {

    let g:airline_theme='gruvbox'

" }

" vim-airline {

    let g:airline_powerline_fonts = 1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline#extensions#tabline#enabled = 1
    " let g:airline#extensions#tabline#left_sep = ' '
    " let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

    let g:airline#extensions#whitespace#enabled=0

    " let g:airline_statusline_ontop = 1
   
" }

" git-messenger {
    
    let g:git_messenger_close_on_cursor_moved=0

    nmap <Leader>gmo :GitMessenger<CR>
    nmap <Leader>gmc :GitMessengerClose<CR>

" }

" nerdcommenter {
    
    let g:NERDSpaceDelims = 1
    let g:NERDDefaultAlign = 'left'
    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDToggleCheckAllLines = 1

    let g:NERDCustomDelimiters = { 
        \ 'html': { 'left': '<!--','right': '-->' },
        \ 'css': { 'left': '/*','right': '*/' },
        \ 'js': { 'left': '//' },
        \ 'ts': { 'left': '//' },
        \ 'php': { 'left': '//' },
        \ 'py': { 'left': '#' },
        \ 'sh': { 'left': '#' },
        \ 'go': { 'left': '//' },
        \ 'lua': { 'left': '--' },
        \ 'c': { 'left': '#' },
    \ }

" }

" indentLine {

    let g:indentLine_enabled = 1

" }

" rainbow {

    let g:rainbow_active = 1

" }

" sneak {

    " let g:sneak#label = 1
    
" }

" easymotion {

    
" }

" trailing-whitespace {

    nmap <leader>\cw <cmd>FixWhitespace<cr>
    
" }

" smoothie {

    let g:smoothie_enabled=0

" }

" CtrlSF {

    nmap <Leader>\sf :CtrlSF<space>

" }

" vim-choosewin {
    
    nmap - <Plug>(choosewin)

" }

" delimitMate {
    
    let g:delimitMate_expand_cr = 1

" }


