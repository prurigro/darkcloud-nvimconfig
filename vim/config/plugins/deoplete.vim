"enable completion (default: 0)
if !exists("g:enablecompletion")
    let g:enablecompletion = 0
endif

if !g:enablecompletion && g:python_neovim
    let g:deoplete#enable_at_startup = 1
endif
