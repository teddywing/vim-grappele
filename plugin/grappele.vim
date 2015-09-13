if exists('g:loaded_grappele')
	finish
endif
let g:loaded_grappele = 1


nnoremap <silent> <Plug>Grappele :<c-u>call grappele#Grappele(v:count)<cr>
nnoremap <silent> <Plug>GrappeleRecall :<c-u>call grappele#Recall()<cr>

if !hasmapto('<Plug>Grappele') || !maparg('G', 'n')
	nmap G <Plug>Grappele
endif

if !hasmapto('<Plug>GrappeleRecall') || !maparg('gG', 'n')
	nmap gG <Plug>GrappeleRecall
endif
