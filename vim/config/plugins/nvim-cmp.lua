if (vim.g.enablecompletion == 1) then
    local snippy = require("snippy")
    local cmp = require("cmp")

    local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    cmp.setup({
        snippet = {
            expand = function(args)
                require "snippy".expand_snippet(args.body)
            end
        },

        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },

        mapping = cmp.mapping.preset.insert({
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif snippy.can_expand_or_advance() then
                    snippy.expand_or_advance()
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end, { "i", "s" }),

            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif snippy.can_jump(-1) then
                    snippy.previous()
                else
                    fallback()
                end
            end, { "i", "s" }),

            ["<Del>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = false }),
        }),

        sources = cmp.config.sources({
            {
                name = "snippy",
                priority = 4
            },

            {
                name = "async_path",
                priority = 3
            },

            {
                name = "buffer",
                priority = 3,
                max_item_count = 5
            },

            {
                name = "treesitter",
                priority = 2,
                max_item_count = 5
            },

            {
                name = "omni",
                priority = 2,
                max_item_count = 5
            },

            {
                name = "tags",
                priority = 1,
                max_item_count = 5,
                option = { current_buffer_only = true },
            },
        }),

        enabled = function()
            -- disable completion in comments
            local context = require "cmp.config.context"

            -- keep command mode completion enabled when cursor is in a comment
            if vim.api.nvim_get_mode().mode == "c" then
                return true
            elseif vim.o.filetype == "" or vim.o.filetype == "gitcommit" or vim.o.filetype == "mail" or vim.o.filetype == "markdown" or vim.o.filetype == "text" then
                return false
            else
                return not context.in_treesitter_capture("comment")
                and not context.in_syntax_group("Comment")
            end
        end
    })
end
