return {
	"stevearc/oil.nvim",

	event = "VeryLazy",
	keys = { {
		"<leader>o",
		function()
			require("oil").toggle_float()
		end,
		desc = "Toggle oil",
	} },

	opts = {
		default_file_explorer = true,
		keymaps = { ["q"] = "actions.close" },
		delete_to_trash = true,
		view_options = {
            show_hidden = true,
            natural_order = true,
        },
		skip_confirm_for_simple_edits = true,
        win_options = { wrap = true },
	},

	config = function(_, opts)
		require("oil").setup(opts)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "oil",
			callback = function()
				vim.opt_local.cursorline = true
			end,
		})
	end,
}
