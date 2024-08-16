"============================================================="
"                                                             "
"  Darkcloud Neovim Config: init.vim                          "
"                                                             "
"  By: Kevin MacMartin (prurigro@gmail.com)                   "
"  Website: https://github.com/prurigro/darkcloud-nvimconfig  "
"                                                             "
"  License: MIT                                               "
"                                                             "
"============================================================="

"load config path
let g:darkcloudpath = expand('<sfile>:p:h')

"add config directory: (distro-agnostic system-wide)
let &runtimepath = printf("%s,%s/vim,%s/local", &runtimepath, g:darkcloudpath, g:darkcloudpath)

"load colours
runtime colors/palette.vim

"load colour scheme:
colorscheme darkcloud

"load user config:
runtime user.vim

"set default values for user settings
let g:autostartchecker = get(g:, "autostartchecker", 0)
let g:enabletreesitter = get(g:, "enabletreesitter", 0)
let g:enablecompletion = get(g:, "enablecompletion", 0)
let g:enableautotags = get(g:, "enableautotags", 0)
let g:enablepowerline = get(g:, "enablepowerline", 0)

"load settings:
runtime config/settings.vim

"initialize plugins:
let g:pathogen_disabled = get(g:, "pathogen_disabled", [])

"don't load vim-gutentags if g:enableautotags is false or ctags isn't in path
if !g:enableautotags || !executable("ctags")
    call add(g:pathogen_disabled, "vim-gutentags")
endif

"don't load nvim-cmp or its dependencies if g:enablecompletion is false
if !g:enablecompletion
    call add(g:pathogen_disabled, "cmp-async-path")
    call add(g:pathogen_disabled, "cmp-buffer")
    call add(g:pathogen_disabled, "cmp-nvim-tags")
    call add(g:pathogen_disabled, "cmp-omni")
    call add(g:pathogen_disabled, "cmp-snippy")
    call add(g:pathogen_disabled, "cmp-treesitter")
    call add(g:pathogen_disabled, "nvim-cmp")
    call add(g:pathogen_disabled, "nvim-snippy")
    call add(g:pathogen_disabled, "vim-snippets")
endif

"use pathogen to load plugins that haven't been disabled
runtime bundle/vim-pathogen/autoload/pathogen.vim

"load keymappings:
runtime config/keyboard.vim

"load plugin configuration:
runtime config/plugins.vim

"load after config:
runtime config/after.vim
