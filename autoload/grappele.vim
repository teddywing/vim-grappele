function! grappele#Grappele(line)
	if a:line !=# 0
		let s:line = a:line
	endif

	return 'G'
endfunction

function! grappele#Recall()
	if exists('s:line')
		return s:line . 'G'
	endif
endfunction

function! grappele#ORecall()
	if exists('s:line')
		return ':normal! V' . s:line . "G\<cr>"
	endif
endfunction
