function! grappele#Grappele(line)
	let l:current_buffer = 0
	let l:column_position = 0
	let l:column_offset = 0
	
	normal! m'
	
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

function! grappele#Recall()
	if exists('s:line')
		call grappele#Grappele(s:line)
	endif
endfunction
