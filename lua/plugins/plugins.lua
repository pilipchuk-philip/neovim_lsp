vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -----------------------------------------------------------
  -- Packer
  -----------------------------------------------------------
  use 'wbthomason/packer.nvim'
  -------------------------------------------------
  -- UI Plugins
  -------------------------------------------------
  use 'folke/tokyonight.nvim'
  use 'ryanoasis/vim-devicons'
  -- NERDTree
  use {
      'preservim/nerdtree',
      requires = {
          'kyazdani42/nvim-web-devicons', opt = true}
  }         
  -- Подсветка парных скобок
  use {'andymass/vim-matchup', event = 'VimEnter'}
  -------------------------------------------------
  -- Нижняя панель
  -------------------------------------------------
  use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -------------------------------------------------
  -- Верхняя панель
  -------------------------------------------------
  use {
  'kdheepak/tabline.nvim',
      requires = {
          { 'hoob3rt/lualine.nvim', opt=true },
          {'kyazdani42/nvim-web-devicons', opt = true}
      }
  }
  -------------------------------------------------
  -- TAGS панель
  -------------------------------------------------
  use 'simrat39/symbols-outline.nvim'
  -- Считает кол-во совпадений при поиске
  use 'google/vim-searchindex'
  -------------------------------------------------
  -- Core Plugins
  ------------------------------------------------- 
  -- Bookmarks
  use 'MattesGroeger/vim-bookmarks'
  -- Даже если включена русская раскладка vim команды будут работать
  use 'powerman/vim-plugin-ruscmd' -- Russian comand line expired
  use 'tpope/vim-surround'
  -- Может повторять через . vimsurround
  use 'tpope/vim-repeat'
  -- Закрывает автоматом скобки
  use 'cohama/lexima.vim'
-- cmd [[ nmap <C-_>   :call nerdcommenter#Comment('x', 'toggle') <CR>]]
  use 'kyazdani42/nvim-web-devicons'
  use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {}
      end
}

  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup { icons = true,}
  end
  }
  -----------------------------------------------------------
  -- SEARCH
  -----------------------------------------------------------
  
  -----------------------------------------------------------
  -- Code Highlight 
  -----------------------------------------------------------
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
 -----------------------------------------------
 --  Auto Completion
 ----------------------------------------------- 
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'j-hui/fidget.nvim'
 -----------------------------------------------
 --  Auto Completion
 ----------------------------------------------- 
 use {
  "ray-x/lsp_signature.nvim",
 }
 -----------------------------------------------
 -- Snippets
 -----------------------------------------------
  use {"L3MON4D3/LuaSnip", config = function() require('plugins.snippets') end}
  use "rafamadriz/friendly-snippets"
 -----------------------------------------------
 -- CMP
 -----------------------------------------------
 use({
    "hrsh7th/nvim-cmp",
    -- Sources for nvim-cmp
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "onsails/diaglist.nvim",
      "onsails/lspkind-nvim",
    },
    config = function() require('plugins.cmp') end,
  })
  -------------------------------------------------
  -- GIT
  -------------------------------------------------
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  use 'b3nj5m1n/kommentary'
  -----------------------------------------------------------
  -- PYTHON
  -----------------------------------------------------------

  -----------------------------------------------------------
  -- GO
  -----------------------------------------------------------
  use 'fatih/vim-go'

  -----------------------------------------------------------
  -- UI
  -----------------------------------------------------------
end)

