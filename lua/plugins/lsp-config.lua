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

        local mason_path = vim.fn.stdpath("data") .. "/mason"
        local vue_language_server_path = mason_path .. "/packages/vue-language-server/node_modules/@vue/language-server"

        vim.lsp.config("vtsls", {
            filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
            settings = {
                javascript = {
                    format = {
                        semicolons = "remove",
                        insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = true,
                    },
                    preferences = {
                        quoteStyle = "single",
                        jsxAttributeQuoteStyle = "double",
                    },
                },
                typescript = {
                    format = {
                        semicolons = "remove",
                        insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = true,
                    },
                    preferences = {
                        quoteStyle = "single",
                        jsxAttributeQuoteStyle = "double",
                    },
                },
                vtsls = {
                    tsserver = {
                        globalPlugins = {
                            {
                                name = "@vue/typescript-plugin",
                                location = vue_language_server_path,
                                languages = { "vue" },
                                configNamespace = "typescript",
                            },
                        },
                    },
                },
            },
        })

        vim.lsp.config("vue_ls", {
            cmd = {
                "vue-language-server",
                "--stdio",
                "--tsdk=" .. vim.fn.getcwd() .. "/node_modules/typescript/lib",
            },
            init_options = {
                vue = { hybridMode = true },
            }
        })

        vim.lsp.enable("sourcekit")
    end,
}
