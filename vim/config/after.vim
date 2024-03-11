"============================================================="
"                                                             "
"  Darkcloud Neovim Config: settings to load after            "
"                                                             "
"  By: Kevin MacMartin (prurigro@gmail.com)                   "
"  Website: https://github.com/prurigro/darkcloud-nvimconfig  "
"                                                             "
"  License: MIT                                               "
"                                                             "
"============================================================="

"load the system version of matchit if another hasn't already been
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
    runtime! macros/matchit.vim
endif

"enable omnicompletion for any filetype without that has syntax highlighting
if exists("+omnifunc")
    autocmd VimEnter,Filetype * if &omnifunc == ""|setlocal omnifunc=syntaxcomplete#Complete|endif
endif

"prevent warnings when changing read-only files
autocmd FileChangedRO * nested set noreadonly

"FILETPE AND SYNTAX: {{{
    "enable more accurate syntax synchronization
    autocmd BufEnter * :syntax sync fromstart

    "disable automatic line breaks
    set textwidth=0

    "set filetypes for various file extensions
    autocmd BufNewFile,BufRead *.aspx,*.asmx,*.ascx,*.master setlocal ft=aspnet
    autocmd BufNewFile,BufRead *.gradle setlocal ft=groovy
    autocmd BufNewFile,BufRead *eslintrc setlocal ft=json
    autocmd BufNewFile,BufRead *.muttrc setlocal ft=muttrc
    autocmd BufNewFile,BufRead *.neomuttrc setlocal ft=neomuttrc
    autocmd BufNewFile,BufRead *pacman.conf setlocal ft=conf

    "word processing
    autocmd Filetype markdown,text,gitcommit,mail setlocal nonumber spell tabstop=2 shiftwidth=2 "defaults
    autocmd Filetype text,mail setlocal wrap nolist textwidth=80 linebreak breakat&vim breakat-=* breakat-=. breakat-=/ breakat-=? breakat-=, breakat-=: breakat-=; breakat-=! "text wrapping

    "comment string
    autocmd FileType tmux setlocal commentstring=#\ %s

    "iskeyword
    autocmd BufEnter,FileType sh setlocal iskeyword-=.
    autocmd FileType scss setlocal iskeyword+=$
    autocmd Filetype markdown setlocal iskeyword+=-
    autocmd FileType javascript setlocal iskeyword+=- iskeyword+=.

    "special side/bottom-bar settings to apply when opened
    autocmd BufEnter,FileType qf,help* setlocal nowrap nocursorcolumn "disable text wrapping and the vertical cursor line
    autocmd BufEnter,FileType qf setlocal scrolloff=0 "don't scroll when clicking near the top or bottom of the list
    autocmd BufEnter,FileType help* setlocal nocursorline "remove the horizontal cursor line

    "load in an 80 char vertical split if the window is wider than 140 characters
    autocmd BufEnter,FileType help* if (winwidth(0) >= 110)|wincmd L|vertical resize 80|endif

    "settings for buffers in diff mode
    autocmd VimEnter,FilterWritePre * if &diff|setlocal nofoldenable|endif

    "disable the whitespace plugin for mail
    autocmd BufEnter,FileType mail hi ExtraWhitespace ctermbg=NONE guibg=NONE
"}}}
