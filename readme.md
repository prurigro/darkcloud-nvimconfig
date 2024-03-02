# darkcloud-nvimconfig

A theme, config and collection of plugins for Neovim

## Requirements

* **Neovim**: [neovim](https://neovim.io) is a hard dependency
* **Bash**: Required by the _update_ and _gentags_ scripts.
* **Coreutils**: Required by the _update_ script.
* **Git**: Required by the _update_ script and git-related plugins.

## Optional Requirements

* **Compilers, Linters and Runtimes**: The ale plugin can use compilers, linters and runtimes to provide real-time syntax checking.
* **CTags**: Required by the _tagbar_ and _deoplete_ plugins as well as the _gentags_ script ([ctags website](http://ctags.sourceforge.net)).
* **Powerline Fonts**: Required to enable the fancier looking status line ([powerline-fonts repo](https://github.com/Lokaltog/powerline-fonts)).
* **Python**: Required for _deoplete_ autocompletion functionality.
* **Neovim Python Module**: Required for _deoplete_ autocompletion.
* **Python Msgpack**: Required for _deoplete_ autocompletion.

## Distribution Features

* **Default Configuration**: A complete set of defaults, focusing on the most modern settings that still provide a compatible experience.
* **Custom theme**: An original colour scheme with explicit values set to optimize the look of individual filetypes.
* **Key Bindings/Aliases**: A set of bindings and aliases defined to group similar features and provide numerous (and sometimes more familiar) ways to access options.
* **Plugins**: A set of plugins have been included and configured to provide support for most normally-unsupported filetypes, and a set of features useful when using Vim as an editor.
* **Custom Configuration**: A second vimrc and bundle folder are included that aren't maintained as part of the repo, making custom plugins and configuration easy to add.

## Installation

1. Clone the darkcloud-nvimconfig repo and run the `update` script.
2. By default the config expects darkcloud-nvimconfig to be installed @ `/etc/darkcloud-nvimconfig`, if you're installing it elsewhere you should add `let g:darkcloudpath = "/path/to/darkcloud-nvimconfig"` to your neovim init.
3. Add `source /path/to/darkcloud-nvimconfig/init.vim` to the neovim init that you want to use the config with

## Configuration

* **Configure Variables**: The following variables can be added to `vim/user.vim` and have their values set to the values you require:
  * `g:autostartchecker`: **1** = Enable the syntax checker when a file is opened | **0** = Check syntax only after being toggled on (default: **0**)
  * `g:autostarttagbar`: **1** = Load a file with the tagbar visible | **0** = Require the tagbar to be toggled on (default: **0**)
  * `g:enabletreesitter`: **1** = Use treesitter for compatible files | **0** = Keep treesitter disabled (default: **0**)
  * `g:enablecompletion`: **1** = Enable autocompletion | **0** = Disable autocompletion (default: **0**)
  * `g:enableautotags`: **1** = Automatically generate tags files | **0** = Disable tag generation (default: **0**)
  * `g:enablepowerline`: **1** = Render the statusline using characters that require powerline-patched fonts | **0** = Render the statusbar with characters that work with all fonts (default: **0**)
* **Custom Settings**: Settings with priority over those set by darkcloud-nvimconfig can be added to `vim/user.vim` or any of the folders in the runtimepath.
* **Custom Plugins**: Pathogen compatible plugins can be cloned or extracted to `darkcloud-nvimconfig/vim/bundle.user/`, or a folder named `bundle` in any of the folders in the runtimepath.
* **Update Script**: (requires: bash+git) Use the `update` script to update the project and submodules, as well as handle any required maintenance, generate docs from the pathogen plugins and create missing config scripts with preset values.

## Mappings

### Mouse

| Binding                       | Mode | Action                                       |
|-------------------------------|------|----------------------------------------------|
| (Ctrl\|Alt\|Shift)+ScrollUp   | ALL  | Scroll left a few characters at a time       |
| (Ctrl\|Alt\|Shift)+ScrollDown | ALL  | Scroll right a few characters at a time      |
|                               |      |                                              |
| MiddleClick                   | ALL  | Select between the cursor and the mouse      |
| Ctrl+LeftClick                | ALL  | Select between the cursor and the mouse      |
| Alt+LeftClick                 | ALL  | Select the line at the mouse                 |
| Ctrl+Alt+LeftClick            | ALL  | Select the paragraph at the mouse            |
|                               |      |                                              |
| Ctrl+RightClick               | ALL  | Copy selection or character under the cursor |
| Ctrl+MiddleClick              | ALL  | Copy selection or character under the cursor |
| Alt+RightClick                | ALL  | Cut selection or character under the cursor  |
| Alt+MiddleClick               | ALL  | Cut selection or character under the cursor  |
| Ctrl+Alt+RightClick           | ALL  | Paste at the cursor                          |
| Ctrl+Alt+MiddleClick          | ALL  | Paste at the cursor                          |
| Shift+MiddleClick             | ALL  | Paste the contents of the xorg buffer        |

### Keyboard

#### Sidebars

| Binding         | Mode | Action                                        |
|-----------------|------|-----------------------------------------------|
| F11 or Leader+[ | N    | Toggle git history for the current file       |
| F12 or Leader+] | N    | Toggle the **tagbar** source code tag sidebar |
| Leader+Leader   | N    | Toggle the location list for **ale** issues   |

#### Toggles

| Binding         | Mode | Action                                           |
|-----------------|------|--------------------------------------------------|
| ~               | N    | Popup a command list dialog                      |
|                 |      |                                                  |
| F1              | ALL  | Toggle line wrapping                             |
| F2              | ALL  | Toggle highlighting of spelling mistakes         |
| F3              | ALL  | Toggle external-paste mode                       |
| F4              | ALL  | Toggle source code syntax checking               |
|                 |      |                                                  |
| \`              | N    | Toggle gutter (left bar with line numbers etc.)  |
| Leader+?        | N    | Toggle the **vim** reference manual              |

#### Spell Check

| Binding | Mode | Action                                        |
|---------|------|-----------------------------------------------|
| ?+      | N    | Add the selected word to the local dictionary |
| ??      | N    | Show spelling suggestions for selected word   |
| ?N      | N    | Go to the next spelling mistake               |
| ?P      | N    | Go to the previous spelling mistake           |

#### Fixing and Formatting

| Binding  | Mode | Action                                                        |
|----------|------|---------------------------------------------------------------|
| Leader+J | N+V  | Format line/selected lines to a max width of the _textwidth_  |
| Leader+f | N+V  | Format document/selection alignment using Vim syntax          |
| Leader+f | N+V  | (Markdown) Format table cursor is currently on                |
| Leader+F | N    | Fix document with available ale fixers                        |
| Leader+t | N    | Convert all tabs into spaces and continue session with spaces |
| Leader+T | N    | Convert all spaces into tabs and continue session with tabs   |
| Leader+w | N    | Remove all trailing whitespace                                |

### Complete Reference

For a complete list of mappings specific to **darkcloud-nvimconfig**, check the list in the comments at the top of [vim/config/keyboard.vim](https://github.com/prurigro/darkcloud-nvimconfig/blob/master/vim/config/keyboard.vim).

## Plugins

* [ale](https://github.com/w0rp/ale): Asynchronous Lint Engine
* [Comment.nvim](https://github.com/numToStr/Comment.nvim): Smart and Powerful commenting plugin for neovim
  * [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring): A Neovim plugin for setting the commentstring option based on the cursor location in the file. The location is checked via treesitter queries
* [deoplete.nvim](https://github.com/Shougo/deoplete.nvim): Dark powered asynchronous completion framework for neovim/Vim8
  * [neco-syntax](https://github.com/Shougo/neco-syntax): Syntax source for neocomplete/deoplete/ncm
* [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim): EditorConfig plugin for Vim that auto-configures certain settings when a .editorconfig file is present
* [incsearch.vim](https://github.com/haya14busa/incsearch.vim): Improved incremental searching for Vim
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim
  * [lightline-ale](https://github.com/maximbaz/lightline-ale): Provides ALE indicator for the lightline vim plugin
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Treesitter configurations and abstraction layer for Neovim
* [ReplaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister): Replace text with the contents of a register (for paste+replace without writing over the buffer)
* [splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim): Simplifies the transition between multiline and single-line code
* [tabular](https://github.com/godlygeek/tabular): Vim script for text filtering and alignment
* [tagbar](https://github.com/majutsushi/tagbar): Uses ctags to generate a sidebar of the tags for the current file
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A wrapper integrating git into vim in such a way as to provide features neither of them could offer on their own
* [vim-gutentags](https://github.com/xolox/vim-easytags): A plugin that takes care of the much needed management of tags files in Vim
* [vim-move](https://github.com/matze/vim-move): Provides a few convenient ways to move selected text
* [vim-pathogen](https://github.com/tpope/vim-pathogen): A plugin to load other plugins while keeping them isolated in their own directory structure rather than all dumped together
* [vim-polyglot-darkcloud](https://github.com/prurigro/vim-polyglot-darkcloud): The darkcloud-nvimconfig fork of a meta-package that attempts to provide the best syntax plugins for each file type
* [vim-signify](https://github.com/mhinz/vim-signify): When a version controlled file is changed, this displays a column showing where and how, and allows for navigation to and between differences
* [vim-surround](https://github.com/tpope/vim-surround): Provides functionality to exchange surrounding delimiters and xml-style tags with another, or simply remove them
  * [vim-repeat](https://github.com/tpope/vim-repeat): A library used by vim-surround to allow its delimiter-switching functions to be repeated with the `.` command
* [vim-togglelist](https://github.com/milkypostman/vim-togglelist): A simple plugin for vim that allows you to bind a key to toggle the Location List and the Quickfix List
* [vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace): Highlights and allows for the easy removal of trailing whitespace in documents
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired): Pairs of handy bracket mappings

## Credits

* By Kevin MacMartin: [GitHub Projects](https://github.com/prurigro?tab=repositories) | [Arch Linux AUR Packages](https://aur.archlinux.org/packages/?SeB=m&K=prurigro)
* The [vim-markdown](https://github.com/plasticboy/vim-markdown) plugin **TableFormat** command, used to format tables in markdown files, was pulled into [plugins.vim](https://github.com/prurigro/darkcloud-nvimconfig/blob/master/vim/config/plugins.vim) from [ftplugin/mkd](https://github.com/plasticboy/vim-markdown/blob/master/ftplugin/mkd.vim).
