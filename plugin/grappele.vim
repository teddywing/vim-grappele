if exists('g:loaded_grappele')
	finish
endif
let g:loaded_grappele = 1


nnoremap <silent> <Plug>Grappele :<c-u>call grappele#Grappele(v:count, 'n')<cr>
nnoremap <silent> <Plug>GrappeleRecall :<c-u>call grappele#Recall('n')<cr>
vnoremap <silent> <Plug>GrappeleRecall :<c-u>call grappele#Recall('v')<cr>
onoremap <silent> <Plug>GrappeleRecall :<c-u>call grappele#Recall('o')<cr>

if !hasmapto('<Plug>Grappele') || !maparg('G', 'n')
	nnoremap <silent> G :<c-u>call grappele#Grappele(v:count, 'n')<cr>
endif

if !hasmapto('<Plug>Grappele') || !maparg('G', 'v')
	vnoremap <silent> G
		\ :<c-u>call grappele#Grappele(v:count, 'v', visualmode())<cr>
endif

if !hasmapto('<Plug>Grappele') || !maparg('G', 'o')
	onoremap <silent> G :<c-u>call grappele#Grappele(v:count, 'o')<cr>
endif

if !hasmapto('<Plug>GrappeleRecall') || !maparg('gG', 'n')
	nmap gG <Plug>GrappeleRecall
endif

if !hasmapto('<Plug>GrappeleRecall') || !maparg('gG', 'v')
	vmap gG <Plug>GrappeleRecall
endif

if !hasmapto('<Plug>GrappeleRecall') || !maparg('gG', 'o')
	omap gG <Plug>GrappeleRecall
endif
