vim.g.netrw_banner = 0
vim.g.editorconfig = true

vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.clipboard:append("unnamedplus")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.linebreak = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 18
vim.opt.signcolumn = "yes"

vim.opt.isfname:append("@-@")
vim.opt.updatetime = 150
vim.opt.colorcolumn = "100"

vim.diagnostic.config({
    virtual_text = true,
    float = { source = true, focusable = false, border = "rounded" },
})

vim.api.nvim_create_autocmd("CursorHold", {
    desc = "Open floating window when resting",
    group = vim.api.nvim_create_augroup("AutoFloat", { clear = true }),
    callback = function()
        if not vim.diagnostic.is_enabled() then return end

        vim.diagnostic.open_float({ scope = "cursor" })
    end,
})
