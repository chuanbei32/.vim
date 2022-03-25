" {

	" A =====================================================================
		" ale {{

			let g:ale_disable_lsp = 1
			let g:ale_completion_enabled = 0
			let g:ale_sign_column_always = 1
			let g:ale_set_highlights = 0

			let g:ale_php_php_executable = '/usr/local/iwork/php/8.0/bin/php'
			let g:ale_php_phpcs_executable = '/iwork/project/.vim/__formats/php/PHP_CodeSniffer/vendor/bin/phpcs'
			let g:ale_php_phpcs_standard = 'PSR12'

			nmap <leader>aep <Plug>(ale_previous_wrap)
			nmap <leader>aen <Plug>(ale_next_wrap)
			nmap <leader>aed <Plug>(ale_detail)

		" }}

		" asyncrun {{

			nnoremap <leader>arr :AsyncRun -raw<space>

		" }}

		" asynctasks {{

    	" }}

		" vim-airline {{

			let g:airline_theme='gruvbox_material'

			if !exists('g:airline_symbols')
				let g:airline_symbols = {}
			endif

			" let g:airline_left_sep='\ue0b8'
			" let g:airline_right_sep='\ue0be'

			let g:airline_powerline_fonts = 1

			let g:airline#extensions#tabline#enabled = 1
			" let g:airline#extensions#tabline#left_sep = ' '
			" let g:airline#extensions#tabline#left_alt_sep = '|'
			let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

			let g:airline#extensions#whitespace#enabled=0

			" let g:airline_statusline_ontop = 1

		" }}

		" vim-argwrap {{{

			nnoremap <leader>awr <cmd>ArgWrap<cr>

		" }}}

	" B =====================================================================
	" C =====================================================================
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
				\ 'coc-html-css-support',
				\ '@yaegassy/coc-nginx',
				\ 'coc-perl',
				\ 'coc-lua',
				\ ]

		" }}

		" CtrlSF {{

			let g:ctrlsf_auto_focus = {
				\ "at": "start"
				\ }

			let g:ctrlsf_auto_preview = 1
			let g:ctrlsf_default_view_mode = 'compact'

			nnoremap <leader>sfg :CtrlSF<space>
			nnoremap <leader>sfr :CtrlSF -R -I<space>

		" }}

		" vim-choosewin {{

    	" }}
	" D =====================================================================
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

			nnoremap <leader>dxa <cmd>DoxAuthor<cr>
			nnoremap <leader>dxx <cmd>Dox<cr>
			nnoremap <leader>dxl <cmd>DoxLic<cr>

		" }}

		" dirvish {{

			let g:dirvish_git_show_ignored = 1
			let g:dirvish_git_show_icons = 0

		" }}
	" E =====================================================================
	    " easymotion {{

    	" }}

		" vim-easy-align {{

			xmap ga <plug>(easyalign)
			nmap ga <Plug>(EasyAlign)

    	" }}
	" F =====================================================================
	" G =====================================================================
	    " git-messenger {{

			let g:git_messenger_close_on_cursor_moved = 1
			let g:git_messenger_always_into_popup = 1

			nnoremap <leader>gmm <cmd>GitMessenger<cr>

		" }}

		" gruvbox-material {{

			let g:gruvbox_material_enable_bold = 0

			let g:gruvbox_material_enable_italic = 0

			let g:gruvbox_material_disable_italic_comment = 1

			let g:gruvbox_material_visual = 'grey background'
			let g:gruvbox_material_sign_column_background = 'none'
			let g:gruvbox_material_transparent_background = 0
			let g:gruvbox_material_ui_contrast = 'low'
			" let g:gruvbox_material_diagnostic_text_highlight = 1
			" let g:gruvbox_material_diagnostic_line_highlight = 1

			let g:gruvbox_material_current_word = 'grey background'

			let g:gruvbox_material_statusline_style = 'mix'

			let g:gruvbox_material_palette = 'mix'
			let g:gruvbox_material_background = 'mix'

		" }}
	" H =====================================================================
	" I =====================================================================
		" indentLine {{

			let g:indentLine_enabled = 1

			" let g:indentLine_setColors = 0
			" let g:indentLine_defaultGroup = 'SpecialKey'
			let g:indentLine_color_term = 239

			let g:indentLine_char_list = ['|', '¦', '┆', '┊']

		" }}

		" incsearch {{

			map /  <Plug>(incsearch-forward)
			map ?  <Plug>(incsearch-backward)
			map g/ <Plug>(incsearch-stay)
			map n  <Plug>(incsearch-nohl-n)
			map N  <Plug>(incsearch-nohl-N)
			map *  <Plug>(incsearch-nohl-*)
			map #  <Plug>(incsearch-nohl-#)
			map g* <Plug>(incsearch-nohl-g*)
			map g# <Plug>(incsearch-nohl-g#)

		" }}
	" J =====================================================================
	" K =====================================================================
	" L =====================================================================
		" leaderF {{

			" let g:Lf_WorkingDirectoryMode = 'A'
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

			noremap <leader>f <nop>
			noremap <leader>b <nop>

			nnoremap <leader>lfe <cmd>Leaderf file<cr>
			nnoremap <leader>lfn <cmd>Leaderf function<cr>

			nnoremap <leader>lfb <cmd>Leaderf buffer<cr>
			nnoremap <leader>lfg :Leaderf rg -e<space>
			nnoremap <leader>lfm <cmd>Leaderf mru<cr>
			nnoremap <leader>lft <cmd>Leaderf tag<cr>

		" }}
	" M =====================================================================
		" mundo {{

			let g:mundo_auto_preview = 1

			nnoremap <leader>mut <cmd>MundoToggle<cr>

		" }}
	" N =====================================================================
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

			nnoremap <leader>nfr <cmd>Neoformat<cr>
			nnoremap <leader>nfv :Neoformat!<space>

		" }}
	" O =====================================================================
	" P =====================================================================
	" Q =====================================================================
	" R =====================================================================
		" rainbow {{

			let g:rainbow_active = 1

		" }}

		" vim-rooter {{

			let g:rooter_patterns = ['.git', '.svn', 'Makefile', '.root']

		" }}
	" S =====================================================================
		" spector「vimspector」 {{

			" let g:vimspector_enable_mappings = 'HUMAN'

			sign define vimspectorBP text=o             texthl=WarningMsg
			sign define vimspectorBPCond text=o?        texthl=WarningMsg
			sign define vimspectorBPDisabled text=o!    texthl=LineNr
			sign define vimspectorPC text=\ >           texthl=MatchParen
			sign define vimspectorPCBP text=o>          texthl=MatchParen
			sign define vimspectorCurrentThread text=>  texthl=MatchParen
			sign define vimspectorCurrentFrame text=>   texthl=Special

			nmap <leader>dsn <Plug>VimspectorStepOver
			nmap <leader>dsb <Plug>VimspectorToggleBreakpoint
			nmap <leader>dss <Plug>VimspectorContinue
			nmap <leader>dsr <Plug>VimspectorRestart
			nmap <leader>dsp <Plug>VimspectorPause
			nmap <leader>dst <Plug>VimspectorStop
			nmap <leader>dsf <Plug>VimspectorAddFunctionBreakpoint
			nmap <leader>dsc <Plug>VimspectorToggleConditionalBreakpoint
			nmap <leader>dso <Plug>VimspectorStepOut
			nmap <leader>dsi <Plug>VimspectorStepInto
			nmap <leader>dsq <cmd>VimspectorReset<CR>
			nmap <leader>dslc <Plug>VimspectorShowOutput Console<CR>
			nmap <leader>dsld <Plug>VimspectorShowOutput stderr<CR>
			nmap <leader>dslo <Plug>VimspectorShowOutput Vimspector-out<CR>
			nmap <leader>dsle <Plug>VimspectorShowOutput Vimspector-err<CR>
			nmap <leader>dsls <Plug>VimspectorShowOutput server<CR>
			nmap <leader>dslt <Plug>VimspectorShowOutput Telemetry<CR>
			nmap <leader>dse :<C-u>VimspectorEval<leader>
			nmap <leader>dsw :<C-u>VimspectorWatch<leader>

		" }}
	" T =====================================================================
	    " test {{

			nnoremap <leader>arr :AsyncRun -raw<space>

    	" }}

		" tagbar {{

			let g:tagbar_width = 35

			nnoremap <leader>tbt <cmd>TagbarToggle<cr>

		" }}
	" U =====================================================================
		" ultisnips {{

			let g:UltiSnipsExpandTrigger="<leader>us"

			let g:UltiSnipsSnippetDirectories=[
				\ "__ultisnips"
				\ ]

		" }}
	" V =====================================================================
	" W =====================================================================
	" X =====================================================================
	" Y =====================================================================
	" Z =====================================================================

" }