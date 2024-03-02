"============================================================="
"                                                             "
"  Darkcloud Neovim Config: plugin settings                   "
"                                                             "
"  By: Kevin MacMartin (prurigro@gmail.com)                   "
"  Website: https://github.com/prurigro/darkcloud-nvimconfig  "
"                                                             "
"  License: MIT                                               "
"                                                             "
"============================================================="

"use utf-8 encoding to load the script as it contains utf-8 characters
scriptencoding utf-8

"INITIALIZE PLUGINS: {{{
    "load plugins in vim/bundle/ and vim/bundle.user/
    execute pathogen#infect('bundle/{}', 'bundle.user/{}')
"}}}

runtime! config/plugins/*
