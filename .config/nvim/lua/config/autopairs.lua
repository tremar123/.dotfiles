local npairs = require("nvim-autopairs")

npairs.setup{
    ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", " ")
}

-- visual than s and choose what to wrap with
require("nvim-surround").setup{}

