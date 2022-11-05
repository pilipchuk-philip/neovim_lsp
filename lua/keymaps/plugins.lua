local keymap = vim.keymap.set
local cmd = vim.cmd             -- execute Vim commands

-----------------------------------------------------------------------
--- CheatSheat
----------------------------------------------------------------------- 
cmd [[ nmap <c-h> :vsplit ~/.config/nvim/keys.txt <cr> ]]

-----------------------------------------------------------------------
--- Trouble
-----------------------------------------------------------------------
cmd[[ nnoremap <silent>t :TroubleToggle<CR> ]]

-----------------------------------------------------------------------
--- Comments
-----------------------------------------------------------------------
cmd [[ nmap <C-/>   <Plug>kommentary_line_default  ]]
cmd [[ vmap <C-/>   <Plug>kommentary_visual_default ]]

-----------------------------------------------------------------------
--- LSP Settings
-----------------------------------------------------------------------
cmd[[ nnoremap <silent>gD :lua vim.lsp.buf.declaration()<CR> ]]
cmd[[ nnoremap <silent>gd :lua vim.lsp.buf.definition()<CR> ]]
-- cmd[[ nnoremap <silent>K :lua vim.lsp.buf.hover()<CR> ]]
-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
-- Rename in current file
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })

-----------------------------------------------------------------------
-- TODO 
----------------------------------------------------------------------- 
cmd [[ nmap <C-t> :TodoQuickFix<CR> ]]
-----------------------------------------------------------------------
-- TAGS 
-----------------------------------------------------------------------  
cmd[[ nnoremap <silent>s :SymbolsOutline<CR> ]]
-----------------------------------------------------------------------
-- GIT 
-----------------------------------------------------------------------   
cmd[[ nnoremap <silent>g :Neogit<CR> ]]

-----------------------------------------------------------------------
-- Telescope 
-----------------------------------------------------------------------  
cmd [[ nnoremap <C-p> :Telescope find_files<CR> ]]
cmd [[ nnoremap <C-f> :Telescope live_grep<CR> ]]
cmd [[ nnoremap <C-e> :Telescope buffers<CR> ]]
cmd [[ nnoremap <C-g> :Telescope git_status<CR> ]]
cmd [[ nnoremap <C-l> :Telescope git_status<CR> ]]

-----------------------------------------------------------------------
--- LSP Saga
----------------------------------------------------------------------- 
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- Code action
-- keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap({"n"}, "<CR>", "<cmd>Lspsaga code_action<CR>", { silent = true })

-- Show line diagnostics
keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostic
keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Diagnsotic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

-- Outline
keymap("n","<leader>o", "<cmd>LSoutlineToggle<CR>",{ silent = true })
