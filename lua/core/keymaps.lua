vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


vim.keymap.set({ "n", "x" }, "H", "^")
vim.keymap.set({ "n", "x" }, "L", "$")

vim.keymap.set("v", "J", "<cmd>m '>+1<cr>gv=gv", { desc = "Move lines down" })
vim.keymap.set("v", "K", "<cmd>m '<-2<cr>gv=gv", { desc = "Move lines up" })

vim.keymap.set("n", "<c-j>", "<c-w>j", { desc = "Window down" })
vim.keymap.set("n", "<c-k>", "<c-w>k", { desc = "Window up" })
vim.keymap.set("n", "<c-h>", "<c-w>h", { desc = "Window left" })
vim.keymap.set("n", "<c-l>", "<c-w>l", { desc = "Window right" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without yanking" })
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d", { desc = "Delete without yanking" })

vim.keymap.set("n", "<esc>", ":nohl<cr>", { desc = "Cancel search", silent = true })

vim.keymap.set("n", "<leader>qq", "<cmd>wqa<cr>", { desc = "Save all and quit" })


vim.keymap.set({ "n", "x" }, "grf", vim.lsp.buf.format, { desc = "Format Code" })
