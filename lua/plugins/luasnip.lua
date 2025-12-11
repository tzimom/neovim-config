return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
	build = "make install_jsregexp",

    opts = { history = true, enable_autosnippets = true },

    config = function(_, opts)
        require("luasnip").setup(opts)
        require("luasnip.loaders.from_lua").lazy_load({
            paths = vim.fn.stdpath("config") .. "/snippets",
        })
    end
}
