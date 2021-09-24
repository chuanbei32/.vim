"{

	"{{ variables
		

	"}}

	"{{ options 

		" let g:vimspector_enable_mappings = 'HUMAN'

		sign define vimspectorBP text=o             texthl=WarningMsg
		sign define vimspectorBPCond text=o?        texthl=WarningMsg
		sign define vimspectorBPDisabled text=o!    texthl=LineNr
		sign define vimspectorPC text=\ >           texthl=MatchParen
		sign define vimspectorPCBP text=o>          texthl=MatchParen
		sign define vimspectorCurrentThread text=>  texthl=MatchParen
		sign define vimspectorCurrentFrame text=>   texthl=Special

	"}}

	"{{ mappings 

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

	"}}

	"{{ autocommands 

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

	"}}

"}