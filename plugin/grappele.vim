if exists('g:loaded_grappele')
	finish
endif
let g:loaded_grappele = 1


nnoremap <Plug>Grappele :<c-u>call grappele#Grappele()

if !hasmapto('<Plug>Grappele') || !maparg('G', 'n')
	nmap G <Plug>Grappele
endif
