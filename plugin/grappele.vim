if exists('g:loaded_grappele')
	finish
endif
let g:loaded_grappele = 1


nnoremap <silent> <Plug>Grappele grappele#Grappele(v:count, 'n')
nnoremap <silent> <expr> <Plug>GrappeleRecall grappele#Recall('n')
vnoremap <silent> <expr> <Plug>GrappeleRecall grappele#Recall('v')
onoremap <silent> <expr> <Plug>GrappeleRecall grappele#ORecall()

if !hasmapto('<Plug>Grappele') || !maparg('G', 'n')
	nnoremap <silent> <expr> G grappele#Grappele(v:count)
endif

if !hasmapto('<Plug>Grappele') || !maparg('G', 'v')
	vnoremap <silent> <expr> G grappele#Grappele(v:count)
endif

if !hasmapto('<Plug>Grappele') || !maparg('G', 'o')
	onoremap <silent> <expr> G grappele#Grappele(v:count)
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
