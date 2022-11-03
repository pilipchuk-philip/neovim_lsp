local cmd = vim.cmd             -- execute Vim commands

-----------------------------------------------------------------------
--- COMMON 
-----------------------------------------------------------------------
cmd [[ let mapleader = "'" ]]
cmd [[ vmap <C-c> "*y ]]
cmd [[ nnoremap ; : ]]
cmd [[ nnoremap p P ]]
cmd [[ nnoremap ; : ]]
cmd [[ nnoremap <leader>; ;  ]]

-----------------------------------------------------------------------
--- NERDTRee
-----------------------------------------------------------------------
cmd [[ nnoremap <BS> :NERDTreeToggle<CR> ]]

-----------------------------------------------------------------------
--- TODO PYTHON
-----------------------------------------------------------------------
cmd [[ imap <C-r> :!python % <CR> ]]
cmd [[ nmap <C-r> :!python % <CR> ]]
cmd [[ vmap <C-r> :!python % <CR> ]]
-----------------------------------------------------------------------
cmd [[ imap <C-a> :!/usr/bin/python -m black % <CR> ]]
cmd [[ nmap <C-a> :!/usr/bin/python -m black % <CR> ]]
cmd [[ vmap <C-a> :!/usr/bin/python -m black % <CR> ]]

--  Toggle show/hide invisible chars  
cmd [[ nnoremap <leader>i :set list!<cr>]]


