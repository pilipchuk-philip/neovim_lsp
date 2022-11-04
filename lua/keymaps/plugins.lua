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
-----------------------------------------------------------------------
--- LSP Saga
----------------------------------------------------------------------- 
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
-- Telescope 
-----------------------------------------------------------------------  
cmd [[ nnoremap <C-p> :Telescope find_files<CR> ]]
cmd [[ nnoremap <C-f> :Telescope live_grep<CR> ]]
cmd [[ nnoremap <C-e> :Telescope buffers<CR> ]]
cmd [[ nnoremap <C-g> :Telescope git_status<CR> ]]
cmd [[ nnoremap <C-l> :Telescope git_status<CR> ]]

