return {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.config["pylsp"] = {
            settings = {
                pylsp = {
                    plugins = {
                        ["pycodestyle"] =  { maxLineLength = 100 },
                        ["flake8"] = { maxLineLength = 100 },
                    },
                },
            },
        }
    end,
}
