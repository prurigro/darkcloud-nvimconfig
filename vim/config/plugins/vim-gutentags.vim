let g:gutentags_cache_dir = '~/.vim/gutentags'

let g:gutentags_file_list_command = {
    \ 'markers': {
    \ '.git': 'git ls-files',
    \ },
\ }

"prevent automatically generating the tagfile and syntax highlighting tags (default: 0)
if !exists("g:enableautotags") || g:enableautotags == 0
    let g:gutentags_enabled = 0
endif
