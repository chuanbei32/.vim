"{

	"{{ variables
		

	"}}

	"{{ options 

		function! FilesFromDirname(fullscreen)
		    let dir = ''
		    let spec = {}
		    let cwd = getcwd()
		    let abspath = fnamemodify(expand('%'), ':p:h')
		    let matched = matchstrpos(abspath, cwd)
		    if abspath ==# cwd
		        let dir = ''
		    elseif matched[0] !=# ""
		        let spec.options = ['-q', abspath[matched[2]+1:].'/']
		    else
		        let dir = abspath
		    endif
		    call fzf#vim#files(dir, fzf#vim#with_preview(spec), a:fullscreen)
		endfunction

		function! RipgrepFzf(string, fullscreen)
		    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
		    let args = split(a:string)
		    for i in args
		        if i[0] !=# '-'
		            let query = i
		            break
		        endif
		    endfor
		    let initial_command = printf(command_fmt, a:string)
		    let reload_command = substitute(initial_command, query, '{q}', '')
		    let spec = {'options': ['--phony', '--query', query, '--bind', 'change:reload:'.reload_command]}
		    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
		endfunction

	"}}

	"{{ mappings 

		nnoremap <Leader>b :Buffers<CR>
		nnoremap <Leader>w :Windows<CR>
		nnoremap <Leader>7 :BCommits<CR>
		nnoremap <Leader>8 :Commits<CR>
		"ripgrep string
		nnoremap <Leader>s :call RipgrepFzf(expand("<cword>"), 0)<CR>
		nnoremap <Leader>ss :call RipgrepFzf(expand("<cword>"), 0)<CR>
		"ripgrep word
		nnoremap <Leader>sw :call RipgrepFzf('-w '.expand("<cword>"), 0)<CR>
		command! -nargs=* -bang RipgrepFZF call RipgrepFzf(<q-args>, <bang>0)
		"ripgrep with given second half of command line (options, patterns, paths)
		nnoremap <Leader>S :RipgrepFZF<Space>
		nnoremap <Leader>F :Files<Space>
		"FZF with current file's folder set as query, so user can search directly from
		"the current file's folder first
		nnoremap <Leader>f :call FilesFromDirname(0)<CR>

	"}}

	"{{ autocommands 

	"}}

"}