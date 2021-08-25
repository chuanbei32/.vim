"{

"{{ variables
	

"}}

"{{ options 


"}}

"{{ mappings 


"}}

"{{ autocommands 

"}}

"}



" vim-airline 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 0
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" vim-airline-themes
let g:airline_theme='minimalist'

" rainbow
let g:rainbow_active = 1





let g:ale_linters = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fix_on_save = 1

let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '▶'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)






let g:ag_highlight=1
let g:ag_working_path_mode="r"



set wildignore+=*.zip,*.exe

let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|DS_Store|dist|build|coverage)|(\.(git|hg|svn)$)',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" <c-r>: 切换匹配模式
" <c-t> or <c-v>, <c-x>：在新的 tab 中打开

let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Window_Height = 15


" <leader>c<space> 注释/取消注释
" <leader>cc // 注释
" <leader>cm 只用一组符号注释
" <leader>cA 在行尾添加注释
" <leader>c$ /* 注释 */
" <leader>cs /* 块注释 */
" <leader>cy 注释并复制
" <leader>ca 切换　// 和 /* */
" <leader>cu 取消注释

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
            \ 'javascript': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' },
            \ 'less': { 'left': '/**', 'right': '*/' }
        \ }

let g:NERDAltDelims_javascript = 1
let g:NERDDefaultNesting = 0



let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_settings = {
         \ 'javascript.jsx' : {
            \ 'extends' : 'jsx',
        \ },
         \ }



augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END


nmap tb :TagbarToggle<CR>

" 启动时自动focus
let g:tagbar_autofocus = 1
let g:tagbar_width = 30

" gotags 配置
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}

let g:indent_guides_enable_on_vim_startup = 1


let g:incsearch#auto_nohlsearch = 1

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


nnoremap <leader>u :GundoToggle<CR>

let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>