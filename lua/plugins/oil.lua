return {
    "stevearc/oil.nvim",

    event = "VeryLazy",
    keys = { { "<leader>/", function() require("oil").toggle_float() end, desc = "Toggle oil" } },

    opts = {
        default_file_explorer = true,
        columns = {},
        keymaps = {
            ["q"] = "actions.close",
        },
        delete_to_trash = true,
        view_options = { show_hidden = true },
        skip_confirm_for_simple_edits = true,
    },

    config = function(_, opts)
        require("oil").setup(opts)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "oil",
            callback = function() vim.opt_local.cursorline = true end,
        })
    end,
}
