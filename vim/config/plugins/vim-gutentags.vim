let g:gutentags_cache_dir = get(g:, "gutentags_cache_dir", "~/.config/nvim/gutentags")

let g:gutentags_ctags_exclude = [
    \ '*.json',
    \ '*.lock',
    \ '*.min.*',
    \ 'node_modules/*',
    \ 'vendor/*',
\ ]

let g:gutentags_file_list_command = {
    \ 'markers': {
    \     '.git': 'git ls-files',
    \ },
\ }

"prevent automatically generating the tagfile and syntax highlighting tags (default: 0)
let g:gutentags_enabled = g:enableautotags
