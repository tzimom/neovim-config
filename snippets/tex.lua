local luasnip = require("luasnip")
local snippet = luasnip.snippet
local text_node = luasnip.text_node
local insert_node = luasnip.insert_node

return {
	snippet("rm", { text_node("\\mathrm{"), insert_node(1), text_node("}") }),
}
