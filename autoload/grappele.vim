function! grappele#Grappele(line, ...)
	let l:current_buffer = 0
	let l:column_position = 0
	let l:column_offset = 0

	let l:mode = get(a:, 1, '')
	let l:visualmode = get(a:, 2, '')

	normal! m'

	if l:mode ==# 'v'
		execute 'normal! ' . l:visualmode
	elseif l:mode ==# 'o'
		normal! V
	endif

	if a:line ==# 0
		" Go to the end of the buffer
		$
	else
		let s:line = a:line

		call setpos('.', [
			\ l:current_buffer,
			\ a:line,
			\ l:column_position,
			\ l:column_offset
		\ ])
	endif
endfunction

function! grappele#Recall(mode)
	if exists('s:line')
		call grappele#Grappele(s:line, a:mode, visualmode())
	endif
endfunction
