"============================================================="
"                                                             "
"  Darkcloud Neovim Config: main settings                     "
"                                                             "
"  By: Kevin MacMartin (prurigro@gmail.com)                   "
"  Website: https://github.com/prurigro/darkcloud-nvimconfig  "
"                                                             "
"  License: MIT                                               "
"                                                             "
"============================================================="

"COMPATIBILITY SETTINGS: {{{
    set nocompatible "disable vi-compatibility settings
    set backspace=indent,eol,start "enables/configures standard backspace behaviour

    "use the '*' register as well as the '+' register if it's available too
    set clipboard=unnamed

    if has('unnamedplus')
        if has('nvim')
            set clipboard=unnamedplus
        else
            set clipboard+=unnamedplus
        endif
    endif

    if has('nvim')
        "extend selection instead of showing the right click menu in neovim
        set mousemodel=extend
    else
        "fancy mouse in vim reporting with xterm2 fallback
        if has("mouse_sgr")
            set ttymouse=sgr
        else
            set ttymouse=xterm2
        endif
    endif

    set mouse=a "enables mouse functionality with extended capabilities

    "8 colours in $TERM=linux, 256 elsewhere
    if $TERM =~ '^linux$'|set t_Co=8|elseif !has("gui_running")|set t_Co=256|endif
    set ttyfast "assume a fast connection to the terminal for better rendering

    "configure to primarily use utf-8
    if has("multi_byte")
        if &termencoding == ""
            let &termencoding = &encoding
        endif

        set encoding=utf-8
        setglobal fileencoding=utf-8
    endif

    set fileformats=unix,dos,mac "set compatible line endings in order of preference
"}}}

"GENERAL SETTINGS: {{{
    "FILE: {{{
        filetype plugin indent on "enable file type-based auto-indentation
        syntax on "enable syntax highlighting
        set formatoptions=roqnl12 "how automatic formatting is to be done
        set diffopt=foldcolumn:0,filler "vimdiff default settings
        set foldmethod=indent foldcolumn=0 "use intentation as the fold method and disable the fold column
        set nofoldenable "disable folds by default
        set tw=80 "set the default text width to 80 when nothing overrides this
        set maxmempattern=10000 "increase the maximum amount of memory available for pattern matching
    "}}}

    "USER INTERFACE: {{{
        set updatetime=100 "set updates to occur every 100ms
        set laststatus=2 showcmd statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v] "status line init and config
        set winheight=1 winminheight=1 "set the minimum window height to 1 lines
        set winwidth=1 winminwidth=1 "set the minimum window width to 1 columns
        set noshowmode "don't display mode information handled by lightline
        set lazyredraw "don't redraw the screen while macros are executing
        set noequalalways "don't force splits to be equal in size when closing or opening one
        set number "enable line numbers
        set nowrap "disable line wrapping
        set cursorline cursorcolumn "enable row/column highlighting
        set visualbell "notify visually instead of with an audible bell
        set splitright "add new tiles on the right (and not left) when added
        set scrolloff=5 "scroll vertically when the cursor is 5 characters away from the top or bottom
        set sidescroll=1 sidescrolloff=5 "scroll horizontally when the cursor is 5 chars away from the edge
        set list listchars=tab:>-,trail:- "display tabs as: >--- and trailing spaces as: -
        set showmatch "show matching open bracket when closed bracket is inserted
        set matchtime=5 "the amount of time before the matching bracket will highlight
        let &showbreak = "" "character to prepend to wrapped lines when line wrapping is enabled

        "enable tab completion in command mode and configure how it handles extensions
        set completeopt=longest,menuone
        set wildmenu
        set wildmode=longest:full,full
        set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.pdf,*.ico,*.jpg,*.gif,*.png,*.webp,*.mp4,*.webm,*.mov,*.eot,*.otf,*.ttf,*.woff,*.woff2
        set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
    "}}}

    "BEHAVIOUR: {{{
        set history=250 "size of the undo history
        set whichwrap=b,s,<,>,[,] "scrolling left/right off current line wraps to the next/previous
        set smarttab expandtab autoindent tabstop=4 shiftwidth=4 "configure tabs
        set hlsearch incsearch ignorecase smartcase "configure how search behaves
        set timeout timeoutlen=500 "how long before timing out for mappings
        set ttimeout ttimeoutlen=100 "how long before timing out for terminal key codes
        set nomodeline "disable the use of file-based modelines as these are insecure

        "FUNCTIONS: {{{
            "enable the auto-creation of missing folders in a save path
            if !exists('*s:MakeNewDir')
                function s:MakeNewDir(fullpath, buf)
                    if empty(getbufvar(a:buf,'&buftype')) && a:fullpath!~#'\v^\w+\:\/'
                        let dirpath = fnamemodify(a:fullpath,':h')

                        if !isdirectory(dirpath)
                            call mkdir(dirpath,'p')
                        endif
                    endif
                endfunction

                augroup WriteDir
                    autocmd!
                    autocmd BufWritePre * :call s:MakeNewDir(expand('<afile>'),+expand('<abuf>'))
                augroup END
            endif

            "update the current file type when a file is renamed
            augroup RenameCheckFiletype
                autocmd!
                autocmd BufFilePost * filetype detect
            augroup END
        "}}}
    "}}}
"}}}
