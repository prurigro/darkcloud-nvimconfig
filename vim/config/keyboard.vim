"============================================================="
"                                                             "
"  Darkcloud Neovim Config: keyboard settings                 "
"                                                             "
"  By: Kevin MacMartin (prurigro@gmail.com)                   "
"  Website: https://github.com/prurigro/darkcloud-nvimconfig  "
"                                                             "
"  License: MIT                                               "
"                                                             "
"============================================================="
"
"Mappings:
"  (mouse)
"    <Ctrl-ScrollUp>          | (A) -> scroll left
"    <Alt-ScrollUp>           | (A) -> scroll left
"    <Shift-ScrollUp>         | (A) -> scroll left
"    <Ctrl-ScrollDown>        | (A) -> scroll right
"    <Alt-ScrollDown>         | (A) -> scroll right
"    <Shift-ScrollDown>       | (A) -> scroll right
"
"    <MiddleClick>            | (A) -> selects from the cursor
"    <Ctrl-LeftClick>         | (A) -> selects from the cursor
"    <Alt-LeftClick>          | (A) -> select the line being clicked
"    <Ctrl-Alt-LeftClick>     | (A) -> select the paragraph being clicked
"
"    <Ctrl-RightClick>        | (A) -> copy selection or character under cursor
"    <Ctrl-MiddleClick>       | (A) -> copy selection or character under cursor
"
"    <Alt-RightClick>         | (A) -> cut selection or character under cursor
"    <Alt-MiddleClick>        | (A) -> cut selection or character under cursor
"
"    <Ctrl-Alt-RightClick>    | (A) -> paste at the cursor (not mouse)
"    <Ctrl-Alt-MiddleClick>   | (A) -> paste at the cursor (not mouse)
"
"  (terminal)
"    <Esc>                    | (T) -> leave edit mode
"
"  (tabs)
"    <Ctrl-n>                 | (N) -> go to the next open tab
"    <Ctrl-p>                 | (N) -> go to the previous open tab
"    <Leader><Ctrl-t>         | (N) -> open a new tab
"
"  (split)
"    <Ctrl-w>]                | (N) -> split vertically
"    <Ctrl-w>[                | (N) -> split horizontally
"
"  (rotate)
"    <Ctrl-w>{                | (N) -> rotate counter-clockwise
"    <Ctrl-w>}                | (N) -> rotate clockwise
"
"  (display)
"    <Backspace>              | (N) -> reset window and clear search
"    //                       | (N) -> reset window and clear search
"    n                        | (N) -> center vertically on next search term
"    N                        | (N) -> center vertically on last search term
"    *                        | (N) -> center vertically on nth next search term
"    #                        | (N) -> center vertically on nth last search term
"
"  (toggles and features)
"    <Leader>d                | (N) -> VCS vimdiff in a new tab with signify
"
"    ik                       | (N) -> add cursor character as a keyword
"    iK                       | (N) -> remove cursor character as a keyword
"
"    `                        | (N) -> toggle the gutter
"    ~                        | (N) -> toggle folds
"
"    <F1>                     | (A) -> toggle line wrapping
"    <F2>                     | (A) -> toggle spell check
"    <F3>                     | (A) -> toggle external-paste mode
"    <F4>                     | (A) -> toggle syntax checking
"
"    <F11>                    | (N) -> toggle git commit history
"    <Leader>[                | (N) -> toggle git commit history
"    <F12>                    | (N) -> toggle the vista sidebar
"    <Leader>]                | (N) -> toggle the vista sidebar
"    <Leader><Leader>         | (N) -> toggle the location list
"
"  (spellcheck)
"    ?+                       | (N) -> add the selected word to the local dictionary
"    ??                       | (N) -> show spelling suggestions for selected word
"    ?N                       | (N) -> go to the next spelling mistake
"    ?P                       | (N) -> go to the previous spelling mistake
"
"  (copy/paste and undo/redo)
"    <Leader>p                | (N) -> view the paste buffers and register contents
"    P                        | (V) -> save selection to the buffer and paste over
"    p                        | (V) -> preserve the buffer pasting over selected text
"
"  (delete/cut operations that don't replace the paste buffer)
"    <Leader>x                | (N) -> delete the char(s) under and the cursor
"    <Leader>x                | (V) -> delete the currently selected text
"    <Leader>X                | (N) -> delete the char(s) before the cursor
"    <Leader>X                | (V) -> delete the currently selected lines
"    <Leader>D                | (N) -> delete from the cursor to EOL
"    <Leader>D                | (V) -> delete the currently selected lines
"    <Leader>dw               | (N) -> delete from the cursor to end of the word
"    <Leader>dd               | (N) -> delete current line
"    <Leader>d                | (V) -> delete selected text
"
"  (fixing-and-formatting)
"    <Leader>J                | (N) -> split document into lines of tw or 80
"    <Leader>J                | (V) -> split selection into lines of tw or 80
"    <Leader>f                | (N) -> format document and return to cursor
"    <Leader>f                | (V) -> format the selection and return to cursor
"    <Leader>F                | (N) -> run available ale fixers on the document
"    <Leader>t                | (N) -> convert tabs into spaces
"    <Leader>T                | (N) -> convert spaces into tabs
"    <Leader>w                | (N) -> remove whitespace
"    <Tab>                    | (V) -> indent all the lines currently selected
"    <Tab>                    | (N) -> indent the current line
"    <Shift-Tab>              | (V) -> unindent all the lines currently selected
"    <Shift-Tab>              | (N) -> unindent the current line
"    [<Space>                 | (N) -> insert a blank line above the current one
"    ]<Space>                 | (N) -> insert a blank line below the current one
"
"  (macros)
"    '                        | (N) -> run a macro
"
"  (movement)
"    =                        | (N) -> go to the first char on the next line
"    _                        | (N) -> go to the first char on the previous line
"
"    <Ctrl-Up>                | (N) -> move four lines up
"    <Ctrl-Down>              | (N) -> move four lines down
"    <Ctrl-k>                 | (N) -> move four lines up
"    <Ctrl-j>                 | (N) -> move four lines down
"
"    <Ctrl-Right>             | (N) -> move one word right
"    <Ctrl-Left>              | (N) -> move one word left
"    <Ctrl-l>                 | (N) -> move one word right
"    <Ctrl-h>                 | (N) -> move one word left
"
"    <Alt-k>                  | (A) -> move the screen up
"    <Alt-j>                  | (A) -> move the screen down
"    <Alt-l>                  | (A) -> move the screen to the right
"    <Alt-h>                  | (A) -> move the screen to the left
"
"    <Shift-Up>               | (N) -> move to the beginning of the document
"    <Shift-Down>             | (N) -> move to the end of the document
"    <Shift-Right>            | (N) -> move to the end of the line
"    <Shift-Left>             | (N) -> move to the beginning of the non-whitespace
"
"    ]g                       | (N) -> next difference (vimdiff/signify)
"    [g                       | (N) -> previous difference (vimdiff/signify)
"    >>                       | (N) -> next difference (vimdiff/signify)
"    <<                       | (N) -> previous difference (vimdiff/signify)
"
"    [[                       | (N) -> jump to previous issue in the location list (qf.nvim)
"    ]]                       | (N) -> jump to the next issue in the location list (qf.nvim)
"
"  (selection)
"    <Ctrl-a>                 | (N) -> select all text
"    <Ctrl-a>                 | (V) -> select all text
"
"    <Shift-Up>               | (V) -> select all text above
"    <Shift-Down>             | (V) -> select all text below
"    <Shift-Right>            | (V) -> select all text to the right
"    <Shift-Left>             | (V) -> select all text to the left up to the indent
"
"    <Ctrl-Up>                | (V) -> select four lines up
"    <Ctrl-Down>              | (V) -> select four lines down
"    <Ctrl-Right>             | (V) -> select one word right
"    <Ctrl-Left>              | (V) -> select one word left
"
"File type Specific Mappings:
"  (help)
"    q                        | (A) -> close the dialog
"
"  (error/location list)
"    <Left>                   | (A) -> up
"    <Right>                  | (A) -> down
"    l                        | (A) -> k
"    h                        | (A) -> j
"    <LClick><LClick>         | (A) -> select entry
"    <Space>                  | (A) -> select entry but remain in qf sidebar
"    q                        | (A) -> close the list
"
"  (vimdiff)
"    <Leader><>               | (N) -> update differences
"    <Leader>,.               | (N) -> update differences
"    <Leader>><               | (N) -> update differences
"    <Leader>.,               | (N) -> update differences
"    <Leader>>                | (N) -> replace diff in other pane with current pane
"    <Leader>.                | (N) -> replace diff in other pane with current pane
"    <Leader><                | (N) -> replace diff in current pane with other pane
"    <Leader>,                | (N) -> replace diff in current pane with other pane

"DISABLED DEFAULT MAPPING: UNSET SHORTCUTS {{{
    "-unmapping tabbing from < and > for use with diff
    "+these commands are replaced by tab and shift+tab
    noremap > <Nop>
    noremap < <Nop>

    "-unmapping help from F1, Alt-F1 and Ctrl-F1
    map <F1> <Nop>
    map <A-F1> <Nop>
    map <C-F1> <Nop>

    "-unmap the suspend function
    map <C-z> <Nop>

    "-unmap ex mode
    nnoremap Q <Nop>

    "unmap shift+k opening help
    nnoremap <S-k> <Nop>
"}}}

"MAPPINGS: GENERAL KEYBINDINGS AND REBINDING {{{
    "MOUSE:{
        "hold ctrl to scroll left/right instead of up/down
        noremap <C-ScrollWheelUp> 4zh
        nnoremap <C-ScrollWheelUp> 4zh
        xnoremap <C-ScrollWheelUp> 4zh
        snoremap <C-ScrollWheelUp> 4zh
        vnoremap <C-ScrollWheelUp> 4zh
        inoremap <C-ScrollWheelUp> <C-O>4zh

        noremap <A-ScrollWheelUp> 4zh
        nnoremap <A-ScrollWheelUp> 4zh
        xnoremap <A-ScrollWheelUp> 4zh
        snoremap <A-ScrollWheelUp> 4zh
        vnoremap <A-ScrollWheelUp> 4zh
        inoremap <A-ScrollWheelUp> <C-O>4zh

        noremap <S-ScrollWheelUp> 4zh
        nnoremap <S-ScrollWheelUp> 4zh
        xnoremap <S-ScrollWheelUp> 4zh
        snoremap <S-ScrollWheelUp> 4zh
        vnoremap <S-ScrollWheelUp> 4zh
        inoremap <S-ScrollWheelUp> <C-O>4zh

        noremap <C-ScrollWheelDown> 4zl
        nnoremap <C-ScrollWheelDown> 4zl
        xnoremap <C-ScrollWheelDown> 4zl
        snoremap <C-ScrollWheelDown> 4zl
        vnoremap <C-ScrollWheelDown> 4zl
        inoremap <C-ScrollWheelDown> <C-O>4zl

        noremap <A-ScrollWheelDown> 4zl
        nnoremap <A-ScrollWheelDown> 4zl
        xnoremap <A-ScrollWheelDown> 4zl
        snoremap <A-ScrollWheelDown> 4zl
        vnoremap <A-ScrollWheelDown> 4zl
        inoremap <A-ScrollWheelDown> <C-O>4zl

        noremap <S-ScrollWheelDown> 4zl
        nnoremap <S-ScrollWheelDown> 4zl
        xnoremap <S-ScrollWheelDown> 4zl
        snoremap <S-ScrollWheelDown> 4zl
        vnoremap <S-ScrollWheelDown> 4zl
        inoremap <S-ScrollWheelDown> <C-O>4zl

        "middle & ctrl+left = select from cursor
        nnoremap <MiddleMouse> <RightMouse>
        xnoremap <MiddleMouse> <RightMouse>
        snoremap <MiddleMouse> <RightMouse>
        vnoremap <MiddleMouse> <RightMouse>
        inoremap <MiddleMouse> <RightMouse>

        nnoremap <C-LeftMouse> <RightMouse>
        xnoremap <C-LeftMouse> <RightMouse>
        snoremap <C-LeftMouse> <RightMouse>
        vnoremap <C-LeftMouse> <RightMouse>
        inoremap <C-LeftMouse> <RightMouse>

        "alt+left = line
        nnoremap <A-LeftMouse> <LeftMouse>V
        xnoremap <A-LeftMouse> <RightMouse>$
        snoremap <A-LeftMouse> <RightMouse>$
        vnoremap <A-LeftMouse> <RightMouse>$
        inoremap <A-LeftMouse> <Esc><LeftMouse>V

        "ctrl+alt+left = select paragraph
        nnoremap <C-A-LeftMouse> <LeftMouse>vip
        xnoremap <C-A-LeftMouse> <RightMouse>ip$
        snoremap <C-A-LeftMouse> <RightMouse>ip$
        vnoremap <C-A-LeftMouse> <RightMouse>ip$
        inoremap <C-A-LeftMouse> <Esc><LeftMouse>vip

        "ctrl+(middle/right) = copy
        nnoremap <C-RightMouse> <LeftMouse>Vy
        xnoremap <C-RightMouse> y
        snoremap <C-RightMouse> y
        vnoremap <C-RightMouse> y
        inoremap <C-RightMouse> <C-0>y

        nnoremap <C-MiddleMouse> <LeftMouse>Vy
        xnoremap <C-MiddleMouse> y
        snoremap <C-MiddleMouse> y
        vnoremap <C-MiddleMouse> y
        inoremap <C-MiddleMouse> <C-0>y

        "alt+(middle/right) = cut
        nnoremap <A-RightMouse> x
        xnoremap <A-RightMouse> x
        snoremap <A-RightMouse> x
        vnoremap <A-RightMouse> x
        inoremap <A-RightMouse> <C-O>x

        nnoremap <A-MiddleMouse> x
        xnoremap <A-MiddleMouse> x
        snoremap <A-MiddleMouse> x
        vnoremap <A-MiddleMouse> x
        inoremap <A-MiddleMouse> <C-O>x

        "ctrl+alt+(middle/right) = paste
        nnoremap <C-A-RightMouse> p
        xnoremap <C-A-RightMouse> p
        snoremap <C-A-RightMouse> p
        vnoremap <C-A-RightMouse> p
        inoremap <C-A-RightMouse> <C-O>p

        nnoremap <C-A-MiddleMouse> p
        xnoremap <C-A-MiddleMouse> p
        snoremap <C-A-MiddleMouse> p
        vnoremap <C-A-MiddleMouse> p
        inoremap <C-A-MiddleMouse> <C-O>p
    "}

    "TERMINAL:{
        tnoremap <Esc> <C-\><C-n>
    "}

    "TABS:{
        nnoremap <silent><expr> <C-n> ':tabnext<CR>'
        nnoremap <silent><expr> <C-p> ':tabprev<CR>'
        nnoremap <silent><expr> <Leader><C-t> ':tabnew<CR>'
    "}

    "SPLIT:{
        nmap <expr><silent> <C-w>] ':vs<CR>'
        nmap <expr><silent> <C-w>[ ':sp<CR>:wincmd j<CR>'
    "}

    "ROTATE:{
        nmap <expr><silent> <C-w>{ ':wincmd R<CR>'
        nmap <expr><silent> <C-w>} ':wincmd r<CR>'
    "}

    "DISPLAY:{
        "clear search and reset buffer
        nnoremap <silent><expr> <BackSpace> ':noh<CR>:redraw!<CR>'
        nnoremap <silent><expr> // ':noh<CR>:redraw!<CR>'

        "keep the currently highlighted term in a search vertically centered
        nnoremap <silent>n nzz
        nnoremap <silent>N Nzz
        nnoremap <silent>* *zz
        nnoremap <silent># #zz
    "}

    "TOGGLES AND FEATURES:{
        "VCS vimdiff in a new tab with signify
        nnoremap <silent><expr> <Leader>d ':SignifyDiff<CR>'

        "add/remove cursor character as a keyword
        nmap <expr><silent> <Leader>k ':execute "setlocal iskeyword+=".getline(".")[col(".")-1]<CR>:echo "The character ".getline(".")[col(".")-1]." has been added to iskeyword"<CR>'
        nmap <expr><silent> <Leader>K ':execute "setlocal iskeyword-=".getline(".")[col(".")-1]<CR>:echo "The character ".getline(".")[col(".")-1]." has been removed from iskeyword"<CR>'

        "toggle the gutter
        nnoremap <silent><expr> ` ':if (&number)<Bar>set nonumber<Bar>if exists("b:sy")<Bar>SignifyDisable<Bar>endif<Bar>else<Bar>set number<Bar>if exists("b:sy")<Bar>SignifyEnable<Bar>endif<Bar>endif<CR>:echo "gutter visibility toggled"<CR>'

        "toggle the fold sidebar
        function! FoldToggle()
            if (&foldcolumn == 0)
                set foldenable
                set foldcolumn=1
                normal zR
            else
                set nofoldenable
                set foldcolumn=0
            endif
        endfunction

        nnoremap <silent><expr> ~ ':call FoldToggle()<CR>'

        "toggle line wrapping (and bottom bar if using the gui)
        nnoremap <silent><expr> <F1> ':set wrap!<CR>:echo "line wrapping toggled"<CR>'
        xnoremap <silent><expr> <F1> '<Esc>:set wrap!<CR>gv'
        inoremap <silent><expr> <F1> '<C-O>:set wrap!<CR>'

        "toggle show spelling errors
        nnoremap <silent><expr> <F2> ':set spell!<CR>:if &spell =~ "0"<Bar>echo "spellcheck toggled off"<Bar>else<Bar>echo "spellcheck toggled on"<Bar>endif<CR>'
        xnoremap <silent><expr> <F2> '<Esc>:set spell!<CR>gv'
        inoremap <silent><expr> <F2> '<C-O>:set spell!<CR>'

        "toggle external-paste mode
        nnoremap <silent><expr> <F3> ':if &paste<Bar>set paste!<Bar>else<Bar>set paste<Bar>endif<CR>'

        "toggle syntax checking
        function! ToggleAle()
            ALEToggle

            if g:ale_enabled
                set scl=yes
            else
                set scl=auto
            endif
        endfunction

        nnoremap <silent><expr> <F4> ':call ToggleAle()<CR>'
        xnoremap <silent><expr> <F4> '<Esc>:call ToggleAle()<CR>gv'
        inoremap <silent><expr> <F4> '<C-O>:call ToggleAle()<CR>'

        "view commit history and diffs
        nnoremap <expr><silent> <F11> ':vs<CR>:0Gclog<CR>:wincmd b<CR>'
        nnoremap <silent><expr> <Leader>[ ':vs<CR>:0Gclog<CR>:wincmd b<CR>'

        "bindings to trigger the vista list of tags
        nnoremap <silent><expr> <F12> ':Vista!!<CR>'
        nnoremap <silent><expr> <Leader>] ':Vista!!<CR>'

        "toggle the location list
        nnoremap <Leader><Leader> <cmd>lua require('qf').toggle('l', false)<CR>
    "}

    "SPELLCHECK:{
        "add the selected misspelled word to the local dictionary
        nnoremap ?+ zg

        "display a list of suggestions for the selected misspelled word
        nnoremap ?? hea<C-X>s

        "go to the next misspelled word
        nnoremap ?N ]s

        "go to the previous misspelled word
        nnoremap ?P [s
    "}

    "COPY PASTE AND UNDO REDO:{
        "display contents of paste buffers
        nnoremap <silent><expr> <Leader>p ':reg<CR>'

        "P pastes and replaces the buffer, p pastes and keeps it
        vnoremap P p
        vnoremap p P

        "delete/cut operations that don't replace the paste buffer
        nnoremap <Leader>x "_x
        vnoremap <Leader>x "_x
        nnoremap <Leader>X "_X
        vnoremap <Leader>X "_X
        nnoremap <Leader>D "_D
        vnoremap <Leader>D "_D
        nnoremap <Leader>dd "_dd
        nnoremap <Leader>dw "_dw
        vnoremap <Leader>d "_d
    "}

    "FIXING AND FORMATTING:{
        "format width to text width (or 80 chars if text width is 0)
        nnoremap <silent><expr> <Leader>J ':let b:tw=&textwidth<CR>:if (b:tw == 0)<Bar>set tw=80<Bar>endif<CR>gg0vG$gq:if (b:tw == 0)<Bar>set tw=0<Bar>let b:tw=80<Bar>endif<CR>:echo "Document has been formatted to a width of ".b:tw." characters"<CR>'
        vnoremap <silent><expr> <Leader>J '<Esc>:let b:tw=&textwidth<CR>:if (b:tw == 0)<Bar>set tw=80<Bar>endif<CR>gvgq:if (b:tw == 0)<Bar>set tw=0<Bar>let b:tw=80<Bar>endif<CR>:echo "Selection has been formatted to a width of ".b:tw." characters"<CR>'

        "format by Vim syntax
        nnoremap <Leader>f mzgg=G`z<CR>:echo "The document has been formatted"<CR>
        vnoremap <Leader>f mz=`z<CR>:echo "The selection has been formatted"<CR>

        "fix with ale
        nnoremap <silent><expr> <Leader>F ':ALEFix<CR>:echo "Available ale fixers have been run on the document"<CR>'

        "convert tabs to spaces and spaces to tabs
        nnoremap <silent><expr> <Leader>t ':let b:et=&expandtab<CR>:set expandtab<CR>:retab!<CR>:let &expandtab=b:et<CR>:echo "Tabs have been converted to spaces"<CR>'
        nnoremap <silent><expr> <Leader>T ':let b:et=&expandtab<CR>:set noexpandtab<CR>:%retab!<CR>:let &expandtab=b:et<CR>:echo "Spaces have been converted to tabs"<CR>'

        "remove trailing whitespace
        nnoremap <silent><expr> <Leader>w ':FixWhitespace<CR>:echo "Trailing whitespace has been removed"<CR>'

        "indent and unindent the currently selected lines
        vnoremap <Tab> >gv
        nnoremap <Tab> v>gv<Esc>
        vnoremap <S-Tab> <gv
        nnoremap <S-Tab> v<gv<Esc>

        "insert blank lines above and below the current one
        nnoremap <silent> ]<Space> :<C-u>call append(line("."), repeat([""], v:count1))<CR>
        nnoremap <silent> [<Space> :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
    "}

    "MACROS:{
        nnoremap ' @
    "}

    "MOVEMENT:{
        "additional mappings for easier access
        nnoremap = +
        nnoremap _ -

        "map ctrl+up/down to moving the cursor up and down by 4 lines
        nnoremap <C-Up> 4k
        nnoremap <C-Down> 4j
        nnoremap <C-k> 4k
        nnoremap <C-j> 4j

        "map ctrl+right/left to moving the cursor left and right by one word
        nnoremap <C-Right> <S-Right>
        nnoremap <C-Left> <S-Left>
        nnoremap <C-l> <S-Right>
        nnoremap <C-h> <S-Left>

        "map alt+direction to moving the viewport in that direction
        noremap <A-Up> <ScrollWheelUp>
        nnoremap <A-Up> <ScrollWheelUp>
        xnoremap <A-Up> <ScrollWheelUp>
        snoremap <A-Up> <ScrollWheelUp>
        vnoremap <A-Up> <ScrollWheelUp>
        inoremap <A-Up> <ScrollWheelUp>
        noremap <A-Down> <ScrollWheelDown>
        nnoremap <A-Down> <ScrollWheelDown>
        xnoremap <A-Down> <ScrollWheelDown>
        snoremap <A-Down> <ScrollWheelDown>
        vnoremap <A-Down> <ScrollWheelDown>
        inoremap <A-Down> <ScrollWheelDown>
        noremap <A-Right> 4zl
        nnoremap <A-Right> 4zl
        xnoremap <A-Right> 4zl
        snoremap <A-Right> 4zl
        vnoremap <A-Right> 4zl
        inoremap <A-Right> <C-O>4zl
        noremap <A-Left> 4zh
        nnoremap <A-Left> 4zh
        xnoremap <A-Left> 4zh
        snoremap <A-Left> 4zh
        vnoremap <A-Left> 4zh
        inoremap <A-Left> <C-O>4zh
        noremap <A-k> <ScrollWheelUp>
        nnoremap <A-k> <ScrollWheelUp>
        xnoremap <A-k> <ScrollWheelUp>
        snoremap <A-k> <ScrollWheelUp>
        vnoremap <A-k> <ScrollWheelUp>
        inoremap <A-k> <ScrollWheelUp>
        noremap <A-j> <ScrollWheelDown>
        nnoremap <A-j> <ScrollWheelDown>
        xnoremap <A-j> <ScrollWheelDown>
        snoremap <A-j> <ScrollWheelDown>
        vnoremap <A-j> <ScrollWheelDown>
        inoremap <A-j> <ScrollWheelDown>
        noremap <A-l> 4zl
        nnoremap <A-l> 4zl
        xnoremap <A-l> 4zl
        snoremap <A-l> 4zl
        vnoremap <A-l> 4zl
        inoremap <A-l> <C-O>4zl
        noremap <A-h> 4zh
        nnoremap <A-h> 4zh
        xnoremap <A-h> 4zh
        snoremap <A-h> 4zh
        vnoremap <A-h> 4zh
        inoremap <A-h> <C-O>4zh

        "remap keys to scroll to the end in a direction
        nnoremap <S-Up> gg0
        nnoremap <S-Down> G$
        nnoremap <S-Right> $
        nnoremap <S-Left> ^

        "move to next/previous difference (vimdiff/signify)
        nmap ]g <plug>(signify-next-hunk)
        nmap [g <plug>(signify-prev-hunk)
        nmap >> ]g
        nmap << [g

        "jump to the previous and next issues in the location list
        nnoremap [[ <cmd>lua require('qf').above('l')<CR>
        nnoremap ]] <cmd>lua require('qf').below('l')<CR>
    "}

    "SELECTION:{
        "ctrl-a to select all
        nnoremap <C-a> gg0vG$
        xnoremap <C-a> <Esc>gg0vG$

        "map remap keys for speedier text selection
        xnoremap <C-Up> 4k
        xnoremap <C-Down> 4j
        xnoremap <C-Right> <S-Right>
        xnoremap <C-Left> <S-Left>

        "remap keys to select all text in one direction
        xnoremap <S-Up> gg0
        xnoremap <S-Down> G$
        xnoremap <S-Right> $
        xnoremap <S-Left> ^
    "}
"}}}

"FILETYPE SPECIFIC MAPPINGS: {{{
    "help
    if !&diff
        autocmd FileType help map <buffer> <silent><expr> q ':q<CR>'
    endif

    "error/location list
    autocmd FileType qf map <buffer> <Left> <Up>
    autocmd FileType qf map <buffer> <Right> <Down>
    autocmd FileType qf map <buffer> l j
    autocmd FileType qf map <buffer> h k
    autocmd FileType qf map <buffer> <2-LeftMouse> <CR>
    autocmd FileType qf map <buffer> <Space> <CR><C-w>p
    autocmd FileType qf map <buffer> <silent><expr> q ':q<CR>'

    "vimdiff
    autocmd FilterWritePre * if &diff|nmap <buffer> <silent><expr> <Leader><> ':diffu<CR>'|endif
    autocmd FilterWritePre * if &diff|nmap <buffer> <silent><expr> <Leader>,. ':diffu<CR>'|endif
    autocmd FilterWritePre * if &diff|nmap <buffer> <silent><expr> <Leader>>< ':diffu<CR>'|endif
    autocmd FilterWritePre * if &diff|nmap <buffer> <silent><expr> <Leader>., ':diffu<CR>'|endif
    autocmd FilterWritePre * if &diff|nmap <buffer> <Leader>> dp|endif
    autocmd FilterWritePre * if &diff|nmap <buffer> <Leader>. dp|endif
    autocmd FilterWritePre * if &diff|nmap <buffer> <Leader>< do|endif
    autocmd FilterWritePre * if &diff|nmap <buffer> <Leader>, do|endif
    autocmd FilterWritePre * if &diff|cabbrev q! qall!|endif
"}}}

"MAPPINGS DISABLED FOR GIVEN FILE TYPES: {{{
    "remove incompatible toggles from specific file types
    autocmd Filetype help,qf,diff,vista noremap <buffer> <F11> <Nop>
    autocmd Filetype help,qf,diff,vista noremap <buffer> <Leader>[ <Nop>
    autocmd Filetype help,qf,diff noremap <buffer> <F12> <Nop>
    autocmd Filetype help,qf,diff noremap <buffer> <Leader>] <Nop>

    "disable modifier keys with directions that would interfere with logic
    autocmd Filetype qf noremap <buffer> <C-Up> <Nop>
    autocmd Filetype qf noremap <buffer> <C-k> <Nop>
    autocmd Filetype qf noremap <buffer> <C-Down> <Nop>
    autocmd Filetype qf noremap <buffer> <C-j> <Nop>
    autocmd Filetype qf noremap <buffer> <C-Right> <Nop>
    autocmd Filetype qf noremap <buffer> <C-l> <Nop>
    autocmd Filetype qf noremap <buffer> <C-Left> <Nop>
    autocmd Filetype qf noremap <buffer> <C-h> <Nop>
    autocmd Filetype qf noremap <buffer> <A-Up> <Nop>
    autocmd Filetype qf noremap <buffer> <A-k> <Nop>
    autocmd Filetype qf noremap <buffer> <A-Down> <Nop>
    autocmd Filetype qf noremap <buffer> <A-j> <Nop>
    autocmd Filetype qf noremap <buffer> <A-Right> <Nop>
    autocmd Filetype qf noremap <buffer> <A-l> <Nop>
    autocmd Filetype qf noremap <buffer> <A-Left> <Nop>
    autocmd Filetype qf noremap <buffer> <A-h> <Nop>
    autocmd Filetype qf noremap <buffer> <S-Up> <Nop>
    autocmd Filetype qf noremap <buffer> <S-k> <Nop>
    autocmd Filetype qf noremap <buffer> <S-Down> <Nop>
    autocmd Filetype qf noremap <buffer> <S-j> <Nop>
    autocmd Filetype qf noremap <buffer> <S-Right> <Nop>
    autocmd Filetype qf noremap <buffer> <S-l> <Nop>
    autocmd Filetype qf noremap <buffer> <S-Left> <Nop>
    autocmd Filetype qf noremap <buffer> <S-h> <Nop>
"}}}
