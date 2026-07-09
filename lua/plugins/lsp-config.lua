return {
    "neovim/nvim-lspconfig", version = "*",

    config = function()
        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            float = { border = "rounded" },
        })

        vim.lsp.config("pylsp", {
            settings = {
                pylsp = {
                    plugins = {
                        ["pycodestyle"] =  { maxLineLength = 100 },
                        ["flake8"] = { maxLineLength = 100 },
                    },
                },
            },
        })

        vim.lsp.enable("sourcekit")

        local mason_path = vim.fn.stdpath("data") .. "/mason"
        local vue_plugin_path = mason_path .. "/packages/vue-language-server/node_modules/@vue/language-server"

        vim.lsp.config("vtsls", {
            filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
            settings = {
                vtsls = {
                    tsserver = {
                        globalPlugins = {
                            {
                                name = "@vue/typescript-plugin",
                                location = vue_plugin_path,
                                languages = { "vue" },
                                configNamespace = "typescript",
                                enableForWorkspaceTypeScriptVersions = true,
                            },
                        },
                    },
                },
            },
        })
    end,
}
