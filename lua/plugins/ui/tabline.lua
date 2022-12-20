require("feline").setup()
local navic = require("nvim-navic")
vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"


