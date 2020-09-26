if exists('g:loaded_grappele')
	finish
endif
let g:loaded_grappele = 1


nnoremap <silent> <Plug>Grappele grappele#Grappele(v:count, 'n')
nnoremap <silent> <Plug>GrappeleRecall :<C-u>call grappele#Recall('n')<cr>
vnoremap <silent> <Plug>GrappeleRecall :<C-u>call grappele#Recall('v')<cr>
onoremap <silent> <expr> <Plug>GrappeleRecall grappele#ORecall()

if !hasmapto('<Plug>Grappele') || !maparg('G', 'n')
	nnoremap <silent> <expr> G grappele#Grappele(v:count, 'n')
endif

if !hasmapto('<Plug>Grappele') || !maparg('G', 'v')
	vnoremap <silent> <expr> G
		\ grappele#Grappele(v:count, 'v', visualmode())
endif

if !hasmapto('<Plug>Grappele') || !maparg('G', 'o')
	onoremap <silent> <expr> G grappele#Grappele(v:count, 'o')
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
