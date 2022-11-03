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

-- cmd [[ vmap <C-_>   :call nerdcommenter#Comment('x', 'toggle') <CR>]]
-- cmd [[ nmap <C-_>   :call nerdcommenter#Comment('x', 'toggle') <CR>]]
cmd [[ nmap <C-/>   <Plug>kommentary_line_default  ]]
cmd [[ vmap <C-/>   <Plug>kommentary_visual_default ]]

-----------------------------------------------------------------------
--- LSP Settings
-----------------------------------------------------------------------
cmd[[ nnoremap <silent>gD :lua vim.lsp.buf.declaration()<CR> ]]
cmd[[ nnoremap <silent>gd :lua vim.lsp.buf.definition()<CR> ]]
cmd[[ nnoremap <silent>K :lua vim.lsp.buf.hover()<CR> ]]

-----------------------------------------------------------------------
-- TODO: 
----------------------------------------------------------------------- 
cmd [[ nmap <C-t> :TodoQuickFix<CR> ]]                                  
 -----------------------------------------------------------------------
-- TAGS: 
-----------------------------------------------------------------------  
cmd [[ nmap <A-2> :SymbolsOutline<CR> ]]
