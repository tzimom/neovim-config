vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


-- Cursor navigation shortcuts
vim.keymap.set({ "n", "x" }, "H", "^", { desc = "Move cursor to start of line", noremap = true })
vim.keymap.set({ "n", "x" }, "L", "$", { desc = "Move cursor to end of line", noremap = true })


-- Move lines
vim.keymap.set("v", "J", "<cmd>m '>+1<cr>gv=gv", { desc = "Move lines down", noremap = true })
vim.keymap.set("v", "K", "<cmd>m '<-2<cr>gv=gv", { desc = "Move lines up", noremap = true })


-- Window navigation with HJKL
vim.keymap.set("n", "<c-j>", "<c-w>j", { desc = "Window down", noremap = true })
vim.keymap.set("n", "<c-k>", "<c-w>k", { desc = "Window up", noremap = true })
vim.keymap.set("n", "<c-h>", "<c-w>h", { desc = "Window left", noremap = true })
vim.keymap.set("n", "<c-l>", "<c-w>l", { desc = "Window right", noremap = true })


-- Next search result + Center on screen
vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })

-- Indent lines and keep selection
vim.keymap.set("v", ">", ">gv", { noremap = true })
vim.keymap.set("v", "<", "<gv", { noremap = true })


-- Actions without yanking
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without yanking", noremap = true })
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d", { desc = "Delete without yanking", noremap = true })


-- Cancel search
vim.keymap.set("n", "<esc>", ":nohl<cr>", { desc = "Cancel search", silent = true, noremap = true })


-- Quit neovim
vim.keymap.set("n", "<leader>qq", "<cmd>wqa<cr>", { desc = "Save all and quit", noremap = true })


-- Format code
vim.keymap.set({ "n", "x" }, "grf", vim.lsp.buf.format, { desc = "Format Code" })
