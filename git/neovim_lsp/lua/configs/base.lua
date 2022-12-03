-- ------------------------------------------- 
-- Variables
-- -------------------------------------------
local cmd = vim.cmd             -- execute Vim commands
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

-- ------------------------------------------- 
-- Base
-- -------------------------------------------
g.translate_source = 'ru'
g.translate_target = 'en'
opt.undofile = true                 -- Возможность отката назад
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз

vim.o.title              = true
vim.o.termguicolors      = true

cmd[[set noerrorbells]]
cmd[[set nomodeline ]]

vim.o.showcmd            = true
vim.o.lazyredraw         = true
vim.o.copyindent         = true
vim.o.showmatch          = true


-- -------------------------------------------
-- Tabs and Spaces
-- -----------------------------------------------------------
cmd([[
filetype indent plugin on
syntax enable
]])

opt.tabstop = 4           -- 1 tab == 4 spaces
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.smarttab = true
opt.smartindent = true    -- autoindent new lines
opt.expandtab = true      -- use spaces instead of tabs
opt.scrolloff=4


-- -------------------------------------------
-- Search
-- -------------------------------------------
vim.o.ignorecase = true
vim.o.smartcase= true
vim.o.showmode= true
cmd[[set nowrap]]



-- vim.o.virtualedit=all
vim.o.hlsearch= true
vim.o.incsearch= true
vim.o.gdefault= true
cmd[[set  nolist]]


cmd[[ set virtualedit=all ]]
cmd[[ set hlsearch ]]
cmd[[ set incsearch ]]
cmd[[ set gdefault ]]
cmd[[ set nolist ]]
cmd[[ set mouse=a ]]
cmd[[ set fileformats="unix,dos,mac" ]]
cmd[[ set formatoptions+=1 ]]
cmd[[ set autoread ]]

-- -------------------------------------------
-- Tabs for Filetypes
-- -------------------------------------------

cmd [[au BufEnter * set fo-=c fo-=r fo-=o]] -- don't auto commenting new lines
cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]] -- remove line lenght marker for selected filetes
cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=4 tabstop=4
]] -- 2 spaces for selected filetypes

-- -------------------------------------------
-- Backups
-- -------------------------------------------
cmd [[ set nobackup ]]                   -- do not keep backup files, it's 70's style
cmd [[ set noswapfile  ]]                -- do not write annoying intermediate swap

-- -------------------------------------------
-- Encoding
-- -------------------------------------------
cmd [[ set termencoding=utf-8 ]]
cmd [[ set encoding=utf-8 ]]
cmd [[ set fileformat=unix ]]
