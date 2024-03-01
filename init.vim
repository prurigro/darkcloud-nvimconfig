"============================================================="
"                                                             "
"  Darkcloud Neovim Config: vimrc                             "
"                                                             "
"  By: Kevin MacMartin (prurigro@gmail.com)                   "
"  Website: https://github.com/prurigro/darkcloud-nvimconfig  "
"                                                             "
"  License: MIT                                               "
"                                                             "
"============================================================="

"darkcloud neovim config folder path: {{{
    "the location of darkcloud-nvimconfig (default is /etc/darkcloud-nvimconfig)
    let g:darkcloudpath = get(g:, "darkcloudpath", "/etc/darkcloud-nvimconfig")
"}}}

"LOAD DARKCLOUD CONFIG AND THEME FILES: {{{
    "Add Config Directory: (distro-agnostic system-wide)
    let &runtimepath = printf('%s,%s/vim,%s/vim/after',&runtimepath,g:darkcloudpath,g:darkcloudpath)

    "Load Colours
    if &term != "linux"
        runtime colors/palette.vim

        "Load Colour Scheme:
        colorscheme darkcloud
    endif

    "Load Settings:
    runtime config/settings.vim

    "Initialize Plugins:
    let g:pathogen_disabled = get(g:, "pathogen_disabled", [])

    if has('python3')
        "check for python-neovim
        redir => python_neovim_check
        silent python3 exec("import pkgutil\nneovim = pkgutil.find_loader('neovim')\nfound = neovim is not None\nprint(found)")
        redir END

        if substitute(python_neovim_check, '^\n*\([^\n]*\)\n*$', '\1', '') == 'True'
            let g:python_neovim = 1
        else
            let g:python_neovim = 0
        endif

        "check for python-msgpack
        redir => python_msgpack_check
        silent python3 exec("import pkgutil\nmsgpack = pkgutil.find_loader('msgpack')\nfound = msgpack is not None\nprint(found)")
        redir END

        if substitute(python_msgpack_check, '^\n*\([^\n]*\)\n*$', '\1', '') == 'True'
            let g:python_msgpack = 1
        else
            let g:python_msgpack = 0
        endif
    else
        "if python isn't available disable plugins that depend on it and set library variables to false
        call add(g:pathogen_disabled, 'MatchTagAlways')
        let g:python_neovim = 0
        let g:python_msgpack = 0
    endif

    "don't load vim-gutentags if ctags can't be found
    if !executable('ctags')
        call add(g:pathogen_disabled, 'vim-gutentags')
    endif

    if !g:python_neovim || !g:python_msgpack
        "don't load deoplete if either of its python dependencies are missing
        call add(g:pathogen_disabled, 'deoplete.nvim')
        call add(g:pathogen_disabled, 'neco-syntax')
    endif

    "use pathogen to load plugins that haven't been disabled
    runtime bundle/vim-pathogen/autoload/pathogen.vim

    "Load Keymappings:
    runtime config/keyboard.vim

    "Load User Config:
    runtime user.vim

    "Load Plugin Configuration:
    runtime config/plugins.vim

    "Load After Config:
    runtime config/after.vim
"}}}
