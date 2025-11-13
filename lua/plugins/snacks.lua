return {
    {
        "folke/snacks.nvim",

        lazy = false,

        keys = {
            { "<leader>ff", function() require("snacks").picker.files() end, desc = "Find file" },
            { "<leader>fg", function() require("snacks").picker.git_files() end, desc = "Find git file" },
            { "<leader>fe", function() require("snacks").explorer() end, desc = "Snacks file explorer" },

            { "<leader>cgg", function() require("snacks").lazygit() end, desc = "Lazy git" },
            { "<leader>cgl", function() require("snacks").lazygit.log() end, desc = "Git log" },
            { "<leader>cgb", function() require("snacks").picker.git_branches() end, desc = "Git branches" },

            { "<leader>bd", function() require("snacks").bufdelete() end, desc = "Delete current buffer" },

            { "<leader>sg", function() require("snacks").picker.grep() end, desc = "Grep" },
            { "<leader>sg", function() require("snacks").picker.grep_word() end, desc = "Grep selection", mode = "x" },
            { "<leader>sk", function() require("snacks").picker.keymaps() end, desc = "Search keymaps" },
        },
    }
}
