if (vim.g.enabletreesitter == 1) then
    -- Set the parser install directory
    local parser_dir

    if (vim.g.treesitterparserdir == nill) then
        parser_dir = "~/.config/nvim/treesitter-parsers"
    else
        parser_dir = vim.g.treesitterparserdir
    end

    vim.opt.runtimepath:append(parser_dir)

    -- Set up treesitter
    require'nvim-treesitter'.setup {
        -- Directory to install parsers and queries to
        install_dir = parser_dir
    }

    -- Languages to install
    local languages = { "bash", "c", "cpp", "css", "diff", "git_config", "go", "html", "java", "javascript", "json", "lua", "php", "python", "query", "rust", "toml", "typescript", "vim", "vimdoc", "vue" }

    -- Install the languages
    require'nvim-treesitter'.install(languages)

    -- Enable the languages + alternative languages that use the same syntax
    vim.list_extend(languages, { "sh" })

    vim.api.nvim_create_autocmd('FileType', {
        pattern = (languages),
        callback = function() vim.treesitter.start() end,
    })

    -- Enable treesitter-based folds
    vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo[0][0].foldmethod = 'expr'

    -- Set up treesitter-based comment strings
    require("ts_context_commentstring").setup()
end
