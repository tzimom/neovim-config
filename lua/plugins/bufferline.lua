return {
    "akinsho/bufferline.nvim",

    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",

    keys = {
        { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "[b", "<Cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
        { "]<a-b>", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer right" },
        { "[<a-b>", "<Cmd>BufferLineMovePrev<cr>", desc = "Move buffer left" },
    },
    opts = {},
}
