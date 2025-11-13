return {
    "saghen/blink.cmp", version = "1.*",

    event = "VeryLazy",
    dependencies = { "rafamadriz/friendly-snippets" },

    opts = {
        keymap = { preset = "default" },
        completion = { documentation = { auto_show = false } },

        sources = {
            default = { "lsp", "snippets", "path", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
}
