return {
	{
		"saghen/blink.cmp",
		version = "1.*",

		event = "VeryLazy",
		dependencies = { "fang2hou/blink-copilot", "LuaSnip", "rafamadriz/friendly-snippets" },

		opts = {
			keymap = { preset = "default" },
            snippets = { preset = "luasnip" },

			completion = { documentation = { auto_show = false } },

			sources = {
				default = { "lazydev", "lsp", "snippets", "copilot", "path", "buffer" },
				providers = {
					lazydev = {
						name = "lazydev",
						module = "lazydev.integrations.blink",
					},
                    copilot = {
                        name = "copilot",
                        module = "blink-copilot",
                        async = true,
                    },
				},
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
	},
}
