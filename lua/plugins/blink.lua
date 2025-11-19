return {
	{
		"saghen/blink.cmp",
		version = "1.*",

		event = "VeryLazy",
		dependencies = { "fang2hou/blink-copilot", "LuaSnip", "rafamadriz/friendly-snippets" },

		opts = {
			keymap = { preset = "default" },
			completion = { documentation = { auto_show = false } },

            snippets = { preset = "luasnip" },

			sources = {
				default = { "lazydev", "lsp", "copilot", "snippets", "path", "buffer" },
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
	{ "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
}
