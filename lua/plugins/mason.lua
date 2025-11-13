return {
    {
        "mason-org/mason.nvim",

        cmd = "Mason",
        event = "VeryLazy",
        dependencies = { "mason-lspconfig.nvim" },

        opts = {},
        keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    },
    {
        "mason-org/mason-lspconfig.nvim",

        opts = {
            on_attach = function(_, buffer)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = buffer, desc = "Go to Definition" })
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = buffer, desc = "LSP Hover Documentation" })
                vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, { buffer = buffer, desc = "Go to previous diagnostic" })
                vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, { buffer = buffer, desc = "Go to next diagnostic" })
                vim.keymap.set('n', 'cff', vim.lsp.buf.format, { buffer = buffer, desc = "Format code" })
            end,
        }
    }
}
