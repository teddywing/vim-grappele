if exists('g:loaded_grappele')
	finish
endif
let g:loaded_grappele = 1


nnoremap <silent> <Plug>Grappele :<c-u>call grappele#Grappele(v:count)<cr>

if !hasmapto('<Plug>Grappele') || !maparg('G', 'n')
	nmap G <Plug>Grappele
endif
