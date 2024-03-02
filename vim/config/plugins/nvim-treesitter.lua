if (vim.g.enabletreesitter ~= nill) then
    if (vim.g.enabletreesitter == 1) then
        local parser_dir

        if (vim.g.treesitterparserdir == nill) then
            parser_dir = "~/.config/nvim/treesitter-parsers"
        else
            parser_dir = vim.g.treesitterparserdir
        end

        vim.opt.runtimepath:append(parser_dir)

        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "bash", "c", "cpp", "git_config", "html", "java", "javascript", "json", "lua", "php", "python", "query", "rust", "toml", "typescript", "vim", "vue" },
            sync_install = false,
            auto_install = false,
            parser_install_dir = parser_dir,

            highlight = {
                enable = true,
                disable = {},
                additional_vim_regex_highlighting = false,
            }
        }
    end
end
