local luasnip = require("luasnip")
local snippet = luasnip.snippet
local text_node = luasnip.text_node

return {
    snippet({ trig = "--a", snippetType = "autosnippet", wordTrig = false }, { text_node("ä") }),
    snippet({ trig = "--o", snippetType = "autosnippet", wordTrig = false }, { text_node("ö") }),
    snippet({ trig = "--u", snippetType = "autosnippet", wordTrig = false }, { text_node("ü") }),
    snippet({ trig = "--s", snippetType = "autosnippet", wordTrig = false }, { text_node("ß") }),
}
