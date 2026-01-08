return {
    {
        "nvim-mini/mini.comment", version = false,
        event = "VeryLazy",
        opts = {},
    },
    {
        "nvim-mini/mini.pairs", version = false,
        event = "VeryLazy",
        opts = {},
    },
    {
        "nvim-mini/mini.surround", version = false,
        event = "VeryLazy",
        opts = {
            mappings = {
                add = "gsa",
                delete = "gsd",
                replace = "gsr",
                find = "gsf",
                find_left = "gsF",
                highlight = "gsh",
            },
        },
    },
    {
        "nvim-mini/mini.trailspace", version = false,
        event = "VeryLazy",
        opts = { only_in_normal_buffers = true },
        keys = {
            { "grft", function() require("mini.trailspace").trim() end, desc = "Trim trailing whitespace" },
            { "grfT", function() require("mini.trailspace").trailspace.trim_last_lines() end,  desc = "Trim last blank lines" },
        }
    },
    -- {
    --     "nvim-mini/mini.clue", version = false,
    --     event = "VeryLazy",
    --     config = function()
    --         local miniclue = require("mini.clue")
    --
    --         miniclue.setup({
    --             triggers = {
    --                 -- Leader triggers
    --                 { mode = "n", keys = "<leader>" },
    --                 { mode = "x", keys = "<leader>" },
    --                 { mode = "n", keys = "<localleader>" },
    --                 { mode = "x", keys = "<localleader>" },
    --
    --                 -- `g` key
    --                 { mode = "n", keys = "g" },
    --                 { mode = "x", keys = "g" },
    --
    --                 -- Marks
    --                 { mode = "n", keys = "'" },
    --                 { mode = "n", keys = "`" },
    --                 { mode = "x", keys = "'" },
    --                 { mode = "x", keys = "`" },
    --
    --                 -- Registers
    --                 { mode = "n", keys = "\"" },
    --                 { mode = "x", keys = "\"" },
    --                 { mode = "i", keys = "<c-r>" },
    --                 { mode = "c", keys = "<c-r>" },
    --
    --                 -- Window commands
    --                 { mode = "n", keys = "<c-w>" },
    --
    --                 -- `z` key
    --                 { mode = "n", keys = "z" },
    --                 { mode = "x", keys = "z" },
    --
    --                 { mode = "n", keys = "[" },
    --                 { mode = "n", keys = "]" },
    --             },
    --             clues = {
    --                 miniclue.gen_clues.builtin_completion(),
    --                 miniclue.gen_clues.g(),
    --                 miniclue.gen_clues.marks(),
    --                 miniclue.gen_clues.registers(),
    --
    --                 miniclue.gen_clues.windows({
    --                     submode_move = false,
    --                     submode_navigate = true,
    --                     submode_resize = true,
    --                 }),
    --
    --                 miniclue.gen_clues.z(),
    --                 miniclue.gen_clues.square_brackets(),
    --
    --                 { mode = "n", keys = "<leader>b", desc = "+Buffer" },
    --                 { mode = "n", keys = "<leader>s", desc = "+Search" },
    --                 { mode = "n", keys = "<leader>g", desc = "+Git" },
    --                 { mode = "n", keys = "<leader>u", desc = "+UI" },
    --                 { mode = "n", keys = "<leader>n", desc = "+Notifications" },
    --                 { mode = "n", keys = "<leader>q", desc = "+Quit Neovim" },
    --
    --                 { mode = "n", keys = "<leader>c", desc = "+Code" },
    --                 { mode = "n", keys = "<leader>cx", desc = "+Trouble" },
    --
    --                 { mode = "n", keys = "gs", desc = "+Surround" },
    --
    --                 { mode = "n", keys = "<localleader>l", desc = "+VimTeX" },
    --             },
    --             window = {
    --                 delay = 300,
    --             },
    --         })
    --     end,
    -- },
}
