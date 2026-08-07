return {
    'stevearc/conform.nvim',
    keys = {
        { "grff", function() require("conform").format({ async = true, lsp_format = "fallback" }) end, mode = { "n", "x" }, desc = "Format code" },
    },
    opts = {
        formatters_by_ft = {
            javascript = { "prettierd", "prettier", stop_after_first = true },
            typescript = { "prettierd", "prettier", stop_after_first = true },
            javascriptreact = { "prettierd", "prettier", stop_after_first = true },
            typescriptreact = { "prettierd", "prettier", stop_after_first = true },
            vue = { "prettierd", "prettier", stop_after_first = true },
            html = { "prettierd", "prettier", stop_after_first = true },
            css = { "prettierd", "prettier", stop_after_first = true },
            json = { "prettierd", "prettier", stop_after_first = true },
            rust = { "rustfmt" },
            -- go = { "goimports", "gofmt" },
            java = { "google-java-format" },
            dart = { "dart_format" },
            lua = { "stylua" },
            tex = { "latexindent" },
            ["_"] = { "trim_whitespace" },
        },
    },
}
