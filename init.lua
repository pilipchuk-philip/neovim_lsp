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
require('plugins.search.telescope')
require('plugins.treesitter.treesitter')
require('plugins.snippets.snippets')
require('plugins.ui.fidget')
require('plugins.code.lsp_saga')
require('plugins.ui.gitsings')
require('plugins.ui.illuminate')
require('plugins.ui.bars')
require('plugins.ui.trouble')
require('plugins.ui.vista')

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
