" {

    " coc {{
        
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

    " }}

    " ale {{

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

    " }}

    " neoformat {{

        let g:neoformat_php_phpcbf = {
            \ 'exe': '/iwork/project/.vim/__formats/php/PHP_CodeSniffer/vendor/bin/phpcbf',
            \ 'stdin': 1,
            \ 'args': ['--standard=PSR12', '-'],
            \ 'valid_exit_codes': [0, 1],
            \ }

        let g:neoformat_enabled_php = [
            \ 'phpcbf'
            \ ]

        " let g:neoformat_try_formatprg = 1

        " let g:neoformat_verbose = 1

        let g:neoformat_basic_format_retab = 1

        let g:neoformat_basic_format_trim = 1

    " }}

    " vimspector {{

        " let g:vimspector_enable_mappings = 'HUMAN'

        sign define vimspectorBP text=o             texthl=WarningMsg
        sign define vimspectorBPCond text=o?        texthl=WarningMsg
        sign define vimspectorBPDisabled text=o!    texthl=LineNr
        sign define vimspectorPC text=\ >           texthl=MatchParen
        sign define vimspectorPCBP text=o>          texthl=MatchParen
        sign define vimspectorCurrentThread text=>  texthl=MatchParen
        sign define vimspectorCurrentFrame text=>   texthl=Special

    " }}

    " asyncrun {{
        
        let g:asyncrun_open = 10

        let $PYTHONNUNBUFFERED=1

    " }}

    " test {{
        
    " }}

    " asynctasks {{
        
    " }}

    " ultisnips {{
        
        let g:UltiSnipsExpandTrigger="<leader>us"

        let g:UltiSnipsSnippetDirectories=[
            \ "__ultisnips"
            \ ]

    " }}

    " DoxygenToolkit {{
        
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

    " }}

    " leaderF {{

        " let g:Lf_WorkingDirectoryMode = 'Ac'
        " let g:Lf_WorkingDirectory = finddir('.root')

        let g:Lf_PreviewInPopup = 1
        let g:Lf_ShowHidden = 1
        let g:Lf_ReverseOrder = 1

        " let g:Lf_WindowPosition='fullScreen'
        let g:Lf_ShowRelativePath=1
        let g:Lf_CursorBlink=1

        let g:Lf_WildIgnore = {
            \ 'dir': [
                \ '.git', 
                \ 'node_modules'
                \ ],
            \ }

        let g:Lf_HighlightIndividual = 0

        let g:Lf_UseCache = 0
        let g:Lf_UseMemoryCache = 0

    " }}

    " mundo {{

        let g:mundo_auto_preview = 1

    " }}

    " tagbar {{

        let g:tagbar_width = 35

    " }}

    " vim-airline-themes {{

        let g:airline_theme='gruvbox_material'

    " }}

    " vim-airline {{

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
       
    " }}

    " indentLine {{

        let g:indentLine_enabled = 1

        " let g:indentLine_setColors = 0
        " let g:indentLine_defaultGroup = 'SpecialKey'
        let g:indentLine_color_term = 239

        let g:indentLine_char_list = ['|', '¦', '┆', '┊']

    " }}

    " rainbow {{

        let g:rainbow_active = 1

    " }}

    " sneak {{

        " let g:sneak#label = 1
        
    " }}

    " easymotion {{


    " }}

    " smoothie {{

        let g:smoothie_enabled=0

    " }}

    " CtrlSF {{
        
        let g:ctrlsf_auto_focus = {
            \ "at": "start"
            \ }

        let g:ctrlsf_auto_preview = 1

        let g:ctrlsf_default_view_mode = 'compact'

    " }}

    " vim-choosewin {{
        
    " }}

    " rainbow_levels {{

    " }}

    " tcomment {{
        
    " }}

    " vim-which-key {{

    " }}

    " dirvish {{
        
    " }}

    " git-messenger {{

        let g:git_messenger_close_on_cursor_moved = 1
        let g:git_messenger_always_into_popup = 1

    " }}


    " gruvbox-material {{

        let g:gruvbox_material_enable_italic = 1

        let g:gruvbox_material_disable_italic_comment = 1

        let g:gruvbox_material_enable_bold = 1

        let g:gruvbox_material_visual = 'grey background'
        let g:gruvbox_material_sign_column_background = 'default'
        let g:gruvbox_material_transparent_background = 1
        let g:gruvbox_material_ui_contrast = 'high'
        let g:gruvbox_material_diagnostic_text_highlight = 1
        let g:gruvbox_material_diagnostic_line_highlight = 1

        let g:gruvbox_material_current_word = 'grey background'

        let g:gruvbox_material_statusline_style = 'mix'

        let g:gruvbox_material_palette = 'mix'
        let g:gruvbox_material_background = 'hard'

    " }}


    " vim-easy-align {{

        xmap ga <plug>(easyalign)
        nmap ga <Plug>(EasyAlign)

    " }}

    " clever-f {{{
    
        let g:clever_f_across_no_line = 1
        let g:clever_f_ignore_case  = 1
        let g:clever_f_mark_direct = 1

    " }}}

" }