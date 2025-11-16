return {
	{
		"saghen/blink.cmp",
		version = "1.*",

		event = "VeryLazy",
		dependencies = { "LuaSnip", "rafamadriz/friendly-snippets" },

		opts = {
			keymap = { preset = "default" },
			completion = { documentation = { auto_show = false } },

			sources = {
				default = { "lazydev", "lsp", "snippets", "path", "buffer" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
					},
				},
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
	},
	{ "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
}
