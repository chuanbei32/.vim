"{

	"{{ variables
		

	"}}

	"{{ options 

		let g:vimspector_enable_mappings = 'HUMAN'

		sign define vimspectorBP text=o             texthl=WarningMsg
		sign define vimspectorBPCond text=o?        texthl=WarningMsg
		sign define vimspectorBPDisabled text=o!    texthl=LineNr
		sign define vimspectorPC text=\ >           texthl=MatchParen
		sign define vimspectorPCBP text=o>          texthl=MatchParen
		sign define vimspectorCurrentThread text=>  texthl=MatchParen
		sign define vimspectorCurrentFrame text=>   texthl=Special

	"}}

	"{{ mappings 


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