" {

	" 
	function! g:MkNonExDir(file, buf)
		if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
			let dir=fnamemodify(a:file, ':h')
			if !isdirectory(dir)
				call mkdir(dir, 'p')
			endif
		endif
	endfunction

	"
    function! g:CustomiseUI()
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

" }