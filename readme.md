# darkcloud-nvimconfig

A theme, config and collection of plugins for Neovim

## Requirements

* **Neovim**: [neovim](https://neovim.io) is a hard dependency
* **Bash**: Required by the _update_ script
* **Coreutils**: Required by the _update_ script
* **Git**: Required by the _update_ script and git-related plugins

## Optional Requirements

* **Powerline Fonts**: Required to enable the fancier looking status line
* **Universal CTags**: Required by _vim-gutentags_ and _vista_, and optional for _nvim-cmp_
* **Compilers, Linters and Runtimes**: The _ale_ plugin can use compilers, linters and runtimes to provide real-time syntax checking

## Distribution Features

* **Default Configuration**: A complete set of defaults, focusing on the most modern settings that still provide a compatible experience
* **Custom theme**: An original colour scheme with explicit values set to optimize the look of individual filetypes
* **Key Bindings/Aliases**: A set of bindings and aliases defined to group similar features and provide numerous (and sometimes more familiar) ways to access options
* **Plugins**: A set of plugins have been included and configured to provide support for most normally-unsupported filetypes, and a set of features useful when using Vim as an editor
* **Custom Configuration**: A second vimrc and bundle folder are included that aren't maintained as part of the repo, making custom plugins and configuration easy to add

## Installation

1. Clone the darkcloud-nvimconfig repo and run the `update` script
2. By default darkcloud-nvimconfig expects to be installed @ `/etc/darkcloud-nvimconfig`, if you're installing it elsewhere you should add `let g:darkcloudpath = "/path/to/darkcloud-nvimconfig"` to your neovim init
3. Add `source /path/to/darkcloud-nvimconfig/init.vim` to your neovim init (after `let g:darkcloudpath = ...` if present)

## Configuration

* **Configure Variables**: The following variables can be added to `local/user.vim` and have their values set to the values you require:
  * `g:autostartchecker`: **1** = Enable the syntax checker when a file is opened | **0** = Check syntax only after being toggled on (default: **0**)
  * `g:enabletreesitter`: **1** = Use treesitter for compatible files | **0** = Keep treesitter disabled (default: **0**)
  * `g:enablecompletion`: **1** = Enable autocompletion | **0** = Disable autocompletion (default: **0**)
  * `g:enableautotags`: **1** = Automatically generate tags files | **0** = Disable tag generation (default: **0**)
  * `g:enablepowerline`: **1** = Render the statusline using characters that require powerline-patched fonts | **0** = Render the statusbar with characters that work with all fonts (default: **0**)
* **Custom Plugins**: Pathogen compatible plugins can be cloned or extracted to `local/bundle/`, or a folder named `bundle` in any of the folders in the runtimepath
* **Update Script**: (requires: bash+git) Use the `update` script to update the project and submodules, as well as handle any required maintenance

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

| Binding         | Mode | Action                                      |
|-----------------|------|---------------------------------------------|
| F11 or Leader+[ | N    | Toggle git history for the current file     |
| F12 or Leader+] | N    | Toggle the **vista** symbol and tag sidebar |
| Leader+Leader   | N    | Toggle the location list for **ale** issues |

#### Toggles

| Binding         | Mode | Action                                          |
|-----------------|------|-------------------------------------------------|
| ~               | N    | Popup a command list dialog                     |
|                 |      |                                                 |
| F1              | ALL  | Toggle line wrapping                            |
| F2              | ALL  | Toggle highlighting of spelling mistakes        |
| F3              | ALL  | Toggle external-paste mode                      |
| F4              | ALL  | Toggle source code syntax checking              |
|                 |      |                                                 |
| \`              | N    | Toggle gutter (left bar with line numbers etc.) |

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

For a complete list of mappings specific to **darkcloud-nvimconfig**, check the list in the comments at the top of [vim/config/keyboard.vim](https://github.com/prurigro/darkcloud-nvimconfig/blob/master/vim/config/keyboard.vim)

## Plugins

* [ale](https://github.com/w0rp/ale): Asynchronous Lint Engine
* [Comment.nvim](https://github.com/numToStr/Comment.nvim): Smart and Powerful commenting plugin for neovim
  * [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring): A Neovim plugin for setting the commentstring option based on the cursor location in the file. The location is checked via treesitter queries
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim
  * [lightline-ale](https://github.com/maximbaz/lightline-ale): Provides ALE indicator for the lightline vim plugin
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): A completion engine plugin for neovim written in Lua
  * [cmp-async-path](https://codeberg.org/FelipeLema/cmp-async-path): Async filesystem path source for nvim-cmp
  * [cmp-buffer](https://github.com/hrsh7th/cmp-buffer): Buffer words source for nvim-cmp
  * [cmp-nvim-tags](https://github.com/quangnguyen30192/cmp-nvim-tags): Tags source for nvim-cmp
  * [cmp-omni](https://github.com/hrsh7th/cmp-omni): Omnifunc source for cmp-nvim
  * [cmp-snippy](https://github.com/dcampos/cmp-snippy): Nvim-snippy completion source for nvim-cmp
  * [cmp-treesitter](https://github.com/ray-x/cmp-treesitter): Treesitter source for nvim-cmp
  * [nvim-snippy](https://github.com/dcampos/nvim-snippy): Snippet plugin for Neovim written in Lua
  * [vim-snippets](https://github.com/honza/vim-snippets): Snippets files for various programming languages
* [nvim-surround](https://github.com/kylechui/nvim-surround): Add/change/delete surrounding delimiter pairs with ease
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Treesitter configurations and abstraction layer for Neovim
  * [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects): Syntax aware text-objects, select, move, swap, and peek support
* [qf.nvim](https://github.com/ten3roberts/qf.nvim):  Extends the default quickfix and location lists for neovim
* [splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim): Simplifies the transition between multiline and single-line code
* [tabular](https://github.com/godlygeek/tabular): Vim script for text filtering and alignment
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A wrapper integrating git into vim in such a way as to provide features neither of them could offer on their own
* [vim-gutentags](https://github.com/xolox/vim-easytags): A plugin that takes care of the much needed management of tags files in Vim
* [vim-move](https://github.com/matze/vim-move): Provides a few convenient ways to move selected text
* [vim-pathogen](https://github.com/tpope/vim-pathogen): A plugin to load other plugins while keeping them isolated in their own directory structure rather than all dumped together
* [vim-polyglot-darkcloud](https://github.com/prurigro/vim-polyglot-darkcloud): The darkcloud-nvimconfig fork of a meta-package that attempts to provide the best syntax plugins for each file type
* [vim-signify](https://github.com/mhinz/vim-signify): When a version controlled file is changed, this displays a column showing where and how, and allows for navigation to and between differences
* [vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace): Highlights and allows for the easy removal of trailing whitespace in documents
* [vista.vim](https://github.com/liuchengxu/vista.vim): Viewer & Finder for LSP symbols and tags

## Credits

* By Kevin MacMartin: [GitHub Projects](https://github.com/prurigro?tab=repositories) | [Arch Linux AUR Packages](https://aur.archlinux.org/packages/?SeB=m&K=prurigro)
