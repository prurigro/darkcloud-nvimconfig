if (vim.g.enabletreesitter == 1) then
    local parser_dir

    if (vim.g.treesitterparserdir == nill) then
        parser_dir = "~/.config/nvim/treesitter-parsers"
    else
        parser_dir = vim.g.treesitterparserdir
    end

    vim.opt.runtimepath:append(parser_dir)

    require("nvim-treesitter.configs").setup({
        ensure_installed = { "bash", "c", "cpp", "css", "diff", "git_config", "go", "html", "java", "javascript", "json", "lua", "php", "python", "query", "rust", "scss", "toml", "typescript", "vim", "vimdoc", "vue" },
        sync_install = true,
        auto_install = false,
        parser_install_dir = parser_dir,

        highlight = {
            enable = true,
            disable = { "blade", "gitcommit", "markdown", "tmux" },
            additional_vim_regex_highlighting = { "blade", "diff", "php", "scss" },
        },

        -- nvim-treesitter-textobjects
        textobjects = {
            select = {
                enable = true,
                lookahead = true, -- Automatically jump forward to textobj

                keymaps = {
                    [ "ap" ] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },
                    [ "ip" ] = { query = "@parameter.inner", desc = "Select inner part of a parameter region" },
                    [ "ac" ] = { query = "@class.outer", desc = "Select outer part of a class region" },
                    [ "ic" ] = { query = "@class.inner", desc = "Select inner part of a class region" },
                    [ "af" ] = { query = "@function.outer", desc = "Select outer part of a function region" },
                    [ "if" ] = { query = "@function.inner", desc = "Select inner part of a function region" },
                    [ "as" ] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
                },

                selection_modes = {
                    [ "@parameter.outer" ] = "v",
                    [ "@parameter.inner" ] = "v",
                    [ "@class.inner" ] = "v",
                    [ "@class.outer" ] = "v",
                    [ "@function.outer" ] = "v",
                    [ "@function.inner" ] = "v",
                },

                include_surrounding_whitespace = false,
            },

            move = {
                enable = true,
                set_jumps = true, -- whether to set jumps in the jumplist

                goto_next_start = {
                    [ "]p" ] = { query = "@parameter.outer", desc = "Next parameter start" },
                    [ "]c" ] = { query = "@class.outer", desc = "Next class start" },
                    [ "]f" ] = { query = "@function.outer", desc = "Next function start" },
                },

                goto_previous_start = {
                    [ "[p" ] = { query = "@parameter.outer", desc = "Previous parameter start" },
                    [ "[c" ] = { query = "@class.outer", desc = "Previous class start" },
                    [ "[f" ] = { query = "@function.outer", desc = "Previous function start" },
                },

                goto_next_end = {
                    [ "}P" ] = { query = "@parameter.outer", desc = "Next parameter end" },
                    [ "}C" ] = { query = "@class.outer", desc = "Next class end" },
                    [ "}F" ] = { query = "@function.outer", desc = "Next function end" },
                },

                goto_previous_end = {
                    [ "{P" ] = { query = "@parameter.outer", desc = "Previous parameter end" },
                    [ "{C" ] = { query = "@class.outer", desc = "Previous class end" },
                    [ "{F" ] = { query = "@function.outer", desc = "Previous function end" },
                },
            },
        },
    })
end
