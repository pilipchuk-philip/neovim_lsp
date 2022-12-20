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
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  -- NERDTree
  use {'preservim/nerdtree', }
  -- Подсветка парных скобок
  use {'andymass/vim-matchup', event = 'VimEnter'}
  -- Нижняя панель
  use {'nvim-lualine/lualine.nvim',}
  -- Верхняя панель
  --[[ use {
  'kdheepak/tabline.nvim',
      requires = {
          {'hoob3rt/lualine.nvim', opt=true },
      }
  } ]]
  -- TAGS панель
  use 'simrat39/symbols-outline.nvim'
  -- Считает кол-во совпадений при поиске
  use 'google/vim-searchindex'
  -- Bookmarks
  use 'MattesGroeger/vim-bookmarks'
  -- Trouble
  use {
      "folke/trouble.nvim",
      config = function()
        require("trouble").setup {}
      end
    }
  -- TODO Comments
  use {
      "folke/todo-comments.nvim",
      config = function()
        require("todo-comments").setup {
            icons = true,
        }
      end
  }
  -------------------------------------------------
  -- Core Plugins
  -------------------------------------------------
  -- Russian comand line expired
  use 'powerman/vim-plugin-ruscmd'
  use 'tpope/vim-surround'
  -- Может повторять через . vimsurround
  use 'tpope/vim-repeat'
  -- Закрывает автоматом скобки
  use 'cohama/lexima.vim'
  use 'b3nj5m1n/kommentary'
  use "lukas-reineke/indent-blankline.nvim"
  -----------------------------------------------------------
  -- SEARCH
  -----------------------------------------------------------
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {
      'nvim-lua/popup.nvim',
      'nvim-telescope/telescope-media-files.nvim'
  } }
  }
  -----------------------------------------------------------
  -- Code Highlight
  -----------------------------------------------------------
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'RRethy/nvim-treesitter-textsubjects'
 -----------------------------------------------
 --  LSP
 -----------------------------------------------
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'j-hui/fidget.nvim'
 --  Auto Completion Utils
  use {
    "ray-x/lsp_signature.nvim",
  }
 -----------------------------------------------
 -- Snippets
 -----------------------------------------------
  use {
      "L3MON4D3/LuaSnip",
      config = function() require('plugins.snippets.snippets') end
  }
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
 -- Gist
 -------------------------------------------------
  use 'mattn/vim-gist'
  use 'mattn/webapi-vim'

 -------------------------------------------------
 -- GIT
 -------------------------------------------------
 use 'liuchengxu/vista.vim'
 -------------------------------------------------
 -- GIT
 -------------------------------------------------
  use 'TimUntersberger/neogit'
  use 'lewis6991/gitsigns.nvim'
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'
  use 'sindrets/diffview.nvim'

 -----------------------------------------------------------
 -- GO
 -----------------------------------------------------------
 use 'fatih/vim-go'
 -----------------------------------------------------------
 -- Navic
 -----------------------------------------------------------
 use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
 }
use 'feline-nvim/feline.nvim'
require("feline").setup()

local navic = require("nvim-navic")

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
 -----------------------------------------------------------
 -- Tabline
 -----------------------------------------------------------

use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
 -----------------------------------------------------------
 -- Barbecue
 -----------------------------------------------------------

 use {
  "utilyre/barbecue.nvim",
  requires = {
    "neovim/nvim-lspconfig",
    "smiteshp/nvim-navic",
    "kyazdani42/nvim-web-devicons", -- optional
  },
  after = "nvim-web-devicons", -- NOTICE: keep this if you're using NvChad
  config = function()
    require("barbecue").setup(
    {
  ---whether to attach navic to language servers automatically
  ---@type boolean
  attach_navic = true,

  ---whether to create winbar updater autocmd
  ---@type boolean
  create_autocmd = true,

  ---buftypes to enable winbar in
  ---@type string[]
  include_buftypes = { "" },

  ---filetypes not to enable winbar in
  ---@type string[]
  exclude_filetypes = { "toggleterm" },

  modifiers = {
    ---filename modifiers applied to dirname
    ---@type string
    dirname = ":~:.",

    ---filename modifiers applied to basename
    ---@type string
    basename = "",
  },

  ---returns a string to be shown at the end of winbar
  ---@type fun(bufnr: number): string
  custom_section = function()
    return ""
  end,

  ---whether to replace file icon with the modified symbol when buffer is modified
  ---@type boolean
  show_modified = true,

  symbols = {
    ---modification indicator
    ---@type string
    modified = "●",

    ---truncation indicator
    ---@type string
    ellipsis = "…",

    ---entry separator
    ---@type string
    separator = "",
  },

  ---icons for different context entry kinds
  ---`false` to disable kind icons
  ---@type table<string, string>|false
  kinds = {
    File = "",
    Package = "",
    Module = "",
    Namespace = "",
    Macro = "",
    Class = "",
    Constructor = "",
    Field = "",
    Property = "",
    Method = "",
    Struct = "",
    Event = "",
    Interface = "",
    Enum = "",
    EnumMember = "",
    Constant = "",
    Function = "",
    TypeParameter = "",
    Variable = "",
    Operator = "",
    Null = "",
    Boolean = "",
    Number = "",
    String = "",
    Key = "",
    Array = "",
    Object = "",
  },
}
    )
  end,
}

end)
