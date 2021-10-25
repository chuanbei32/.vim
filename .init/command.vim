" {
	
	" 保留当前buffer, 删除其他 buffer
	command! BufferOnly silent! execute "%bd|e#|bd#"
	
" }