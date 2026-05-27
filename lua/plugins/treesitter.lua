return {
    {
        "nvim-treesitter/nvim-treesitter",

        lazy = false,
        build = ":TSUpdate",


        opts = {
            auto_install = true,
        }
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects", branch = "main",

        init = function()
            vim.g.no_plugin_maps = true
        end,

        opts = {
            select = {
                lookahead = true,

                selection_modes = {
                    ["@parameter.outer"] = "v",
                    ["@function.outer"] = "V",
                    -- ["@class.outer"] = "<c-v>",
                },

                include_surrounding_whitespace = false,
            },
        },
    },
}
