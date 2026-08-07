vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- vim.keymap.set({ "n", "x" }, "H", "^", { desc = "Move cursor to start of line", noremap = true })
-- vim.keymap.set({ "n", "x" }, "L", "$", { desc = "Move cursor to end of line", noremap = true })

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move lines down", noremap = true })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move lines up", noremap = true })

vim.keymap.set("n", "<c-j>", "<c-w>j", { desc = "Window down", noremap = true })
vim.keymap.set("n", "<c-k>", "<c-w>k", { desc = "Window up", noremap = true })
vim.keymap.set("n", "<c-h>", "<c-w>h", { desc = "Window left", noremap = true })
vim.keymap.set("n", "<c-l>", "<c-w>l", { desc = "Window right", noremap = true })

vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })

vim.keymap.set("v", ">", ">gv", { noremap = true })
vim.keymap.set("v", "<", "<gv", { noremap = true })

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without yanking", noremap = true })
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d", { desc = "Delete without yanking", noremap = true })

vim.keymap.set("n", "<esc>", ":nohl<cr>", { desc = "Cancel search", silent = true, noremap = true })

vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit", noremap = true })
vim.keymap.set("n", "<leader>qw", "<cmd>wqa<cr>", { desc = "Save all and quit", noremap = true })
vim.keymap.set("n", "<leader>qf", "<cmd>qa!<cr>", { desc = "Force quit", noremap = true })

vim.keymap.set("n", "<leader>uw", "<cmd>set wrap!<cr>", { desc = "Toggle line wrap", noremap = true })

vim.keymap.set({ "x", "o" }, "am", function()
    require ("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "im", function()
    require ("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ac", function()
    require ("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ic", function()
    require ("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "as", function()
    require ("nvim-treesitter-textobjects.select").select_textobject("@local.scope", "locals")
end)

vim.keymap.set("n", "<leader>a", function()
    require("nvim-treesitter-textobjects.swap").swap_next("@parameter.inner")
end)
vim.keymap.set("n", "<leader>A", function()
    require("nvim-treesitter-textobjects.swap").swap_previous("@parameter.outer")
end)
