----------------------------------------------------------
-- Configs
-----------------------------------------------------------
require('configs.base')
require('configs.ui')

-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------
require('plugins.plugins')
require('plugins.autocomplete.cmp')
require('plugins.autocomplete.lsp_saga')
require('plugins.code.code_run')
require('plugins.ui.lualine')
require('plugins.ui.tabline')
require('plugins.search.telescope')
require('plugins.treesitter.treesitter')
require('plugins.snippets.snippets')
require('plugins.ui.fidget')
require('plugins.ui.gitsings')
require('plugins.ui.trouble')

-----------------------------------------------------------
-- Languages LSP
-----------------------------------------------------------
require('plugins.lsp.lua_lsp')
require('plugins.lsp.pyright')
require('plugins.lsp.go')
require('plugins.lsp.jsonls')
require('plugins.lsp.dockerls')
require('plugins.lsp.html')
require('plugins.lsp.css')
require('plugins.lsp.tsscript')

-----------------------------------------------------------
-- Keymaps
-----------------------------------------------------------
require('keymaps.base')
require('keymaps.plugins')
