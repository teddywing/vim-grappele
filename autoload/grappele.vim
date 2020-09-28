function! grappele#Grappele(line, ...)
	let l:line = ''

	if a:line !=# 0
		let s:line = a:line
	endif

	return 'G'
endfunction

function! grappele#Recall(mode)
	if exists('s:line')
		let l:line = s:line

		if a:mode ==# 'v'
			let l:line = visualmode() . l:line
		endif

		execute 'normal! ' . l:line . 'G'
	endif
endfunction

function! grappele#ORecall()
	if exists('s:line')
		return ':normal! V' . s:line . "G\<cr>"
	endif
endfunction
