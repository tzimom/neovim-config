local luasnip = require("luasnip")
local snippet = luasnip.snippet
local text_node = luasnip.text_node

return {
    snippet({ trig = "aaa", snippetType = "autosnippet", wordTrig = false }, { text_node("ä") }),
    snippet({ trig = "ooo", snippetType = "autosnippet", wordTrig = false }, { text_node("ö") }),
    snippet({ trig = "uuu", snippetType = "autosnippet", wordTrig = false }, { text_node("ü") }),
    snippet({ trig = "AAA", snippetType = "autosnippet", wordTrig = false }, { text_node("Ä") }),
    snippet({ trig = "OOO", snippetType = "autosnippet", wordTrig = false }, { text_node("Ö") }),
    snippet({ trig = "UUU", snippetType = "autosnippet", wordTrig = false }, { text_node("Ü") }),
    snippet({ trig = "sss", snippetType = "autosnippet", wordTrig = false }, { text_node("ß") }),
}
