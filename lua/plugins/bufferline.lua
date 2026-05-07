return {
    "akinsho/bufferline.nvim",

    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",

    keys = {
        { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "[b", "<Cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
    },
    opts = {},
}
