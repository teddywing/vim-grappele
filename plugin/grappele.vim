if exists('g:loaded_grappele')
	finish
endif
let g:loaded_grappele = 1


nnoremap <silent> <expr> <Plug>GrappeleRecall grappele#Recall()
vnoremap <silent> <expr> <Plug>GrappeleRecall grappele#Recall()
onoremap <silent> <expr> <Plug>GrappeleRecall grappele#ORecall()

if !maparg('G', 'n')
	nnoremap <silent> <expr> G grappele#Grappele(v:count)
endif

if !maparg('G', 'v')
	vnoremap <silent> <expr> G grappele#Grappele(v:count)
endif

if !maparg('G', 'o')
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
