function! grappele#Grappele(line, ...)
	" let l:current_buffer = 0
	" let l:column_position = 0
	" let l:column_offset = 0
    "
	" let l:mode = get(a:, 1, '')
	" let l:visualmode = get(a:, 2, '')
    "
	" normal! m'
    "
	" if l:mode ==# 'v'
	" 	execute 'normal! ' . l:visualmode
	" elseif l:mode ==# 'o'
	" 	normal! V
	" endif
    "
	" if a:line ==# 0
	" 	" Go to the end of the buffer
	" 	$
	" else
	" 	let s:line = a:line
    "
	" 	call setpos('.', [
	" 		\ l:current_buffer,
	" 		\ a:line,
	" 		\ l:column_position,
	" 		\ l:column_offset
	" 	\ ])
	" endif

	let l:line = ''

	if a:line !=# 0
		let s:line = a:line
	endif

	echom s:line . 'G'
	return 'G'
endfunction

function! grappele#Recall(mode)
	if exists('s:line')
		" call grappele#Grappele(s:line, a:mode, visualmode())

		let l:line = s:line

		if a:mode ==# 'o'
			" let l:line += 1
		elseif a:mode ==# 'v'
			let l:line = visualmode() . l:line
		endif

		echom 'Recall: ' . l:line
		execute 'normal! ' . l:line . 'G'
	endif
endfunction
