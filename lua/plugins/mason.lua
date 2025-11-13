return {
	{
		"mason-org/mason.nvim",

		cmd = "Mason",
		event = "VeryLazy",

		opts = {},
		keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
	},
	{
		"mason-org/mason-lspconfig.nvim",

		event = "VeryLazy",
		dependencies = { "neovim/nvim-lspconfig" },

		opts = {},
	},
}
