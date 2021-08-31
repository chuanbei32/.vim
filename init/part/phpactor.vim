"{

	"{{ variables
		

	"}}

	"{{ options 
	
		let g:phpactorPhpBin = "/usr/local/iwork/php/8.0/bin/php"

	"}}

	"{{ mappings 


	"}}

	"{{ autocommands 

		autocmd FileType php set iskeyword+=$
		
		autocmd FileType php setlocal omnifunc=phpactor#Complete
		
	"}}

"}