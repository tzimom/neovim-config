return {
    "nvim-treesitter/nvim-treesitter", branch = "master",

    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    event = "VeryLazy",
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },

            indent = { enable = true },

            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,

                    keymaps = {
                        ["af"] = { query = "@function.outer", desc = "Select outer part of function" },
                        ["if"] = { query = "@function.inner", desc = "Select outer part of function" },
                        ["ac"] = { query = "@class.outer", desc = "Select outer part of class" },
                        ["ic"] = { query = "@class.inner", desc = "Select inner part of class" },
                    },

                    include_surrounding_whitespace = false,
                },
            },
        })
    end
}
