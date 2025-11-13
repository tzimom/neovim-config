return {
    "gelguy/wilder.nvim",

    dependencies = { "romgrk/fzy-lua-native" },

    config = function()
        local wilder = require("wilder")

        wilder.setup({ modes = { ":", "/", "?" } })

        wilder.set_option("renderer", wilder.popupmenu_renderer({
            min_width = "20%",
            max_height = "15%",
            reverse = true,
            highlighter = wilder.lua_fzy_highlighter(),
        }))
    end
}
