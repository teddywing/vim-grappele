function! grappele#Grappele(line)
	let l:current_buffer = 0
	let l:column_position = 0
	let l:column_offset = 0
	
	if a:line ==# 0
		" Go to the end of the buffer
		$
	else
		call setpos('.', [
			\ l:current_buffer,
			\ a:line,
			\ l:column_position,
			\ l:column_offset
		\ ])
	endif
endfunction
