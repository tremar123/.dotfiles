local npairs = require("nvim-autopairs")

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))

npairs.setup({
	ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]], "%s+", " "),
})

require("nvim-surround").setup()
require("document-color").setup({
	mode = "foreground",
})
