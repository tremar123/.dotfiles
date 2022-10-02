local npairs = require("nvim-autopairs")

npairs.setup{
    ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", " ")
}

-- visual than s and choose what to wrap with
require("surround").setup{
  context_offset = 100,
  load_autogroups = false,
  mappings_style = "sandwich",
  map_insert_mode = true,
  quotes = {"'", '"'},
  brackets = {"(", '{', '['},
  space_on_closing_char = true,
  pairs = {
    nestable = { b = { "(", ")" }, s = { "[", "]" }, B = { "{", "}" }, a = { "<", ">" } },
    linear = { q = { "'", "'" }, t = { "`", "`" }, d = { '"', '"' }},
  prefix = "s"
  }
}

