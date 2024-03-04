"start the tagbar if g:autostarttagbar is true while not in diff mode
if g:autostarttagbar == 1 && !&diff
    autocmd VimEnter * nested :call tagbar#autoopen(1)
endif

let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_singleclick = 1
let g:tagbar_width = 35
let g:tagbar_autofocus = 1

autocmd FileType tagbar setlocal nocursorcolumn
