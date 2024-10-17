"don't use default mappings
let g:move_map_keys = 0

"visual mode mappings
vmap <S-C-Up> <Plug>MoveBlockUp
vmap <S-C-Down> <Plug>MoveBlockDown
vmap <S-C-Right> <Plug>MoveBlockRight
vmap <S-C-Left> <Plug>MoveBlockLeft

"normal mode mappings
nmap <S-C-Up> <Plug>MoveLineUp
nmap <S-C-Down> <Plug>MoveLineDown
nmap <S-C-Right> <Plug>MoveCharRight
nmap <S-C-Left> <Plug>MoveCharLeft
