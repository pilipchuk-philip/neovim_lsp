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
 -- NVIM Transporent
 -----------------------------------------------------------

use 'xiyaowong/nvim-transparent'
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})
 -----------------------------------------------------------
 -- Easy Align
 -----------------------------------------------------------
 use {
  'kkoomen/vim-doge',
   run = ':call doge#install()'
 }
 -----------------------------------------------------------
 -- Vim Sphinx intergration
 -----------------------------------------------------------
use 'stsewd/sphinx.nvim'
 -----------------------------------------------------------
 -- Which Key
 -----------------------------------------------------------
use 'RRethy/vim-illuminate'
require('illuminate').configure({
     providers = {
        'lsp',
        'treesitter',
        'regex',
    },
    delay = 100,
    filetype_overrides = {},
    filetypes_denylist = {
        'dirvish',
        'fugitive',
    },
    filetypes_allowlist = {},
    modes_denylist = {},
    modes_allowlist = {},
    providers_regex_syntax_denylist = {},
    providers_regex_syntax_allowlist = {},
    under_cursor = true,
    large_file_cutoff = nil,
    large_file_overrides = nil,
    min_count_to_highlight = 1,
})
------------------------------------------------------------
-- Wilder
------------------------------------------------------------
use {
  'gelguy/wilder.nvim',
  requires = {
    "kyazdani42/nvim-web-devicons", -- optional
  },
  config = function()
  end,
}
require("wilder").setup({
    modes = {':', '/', '?'},
    next_key = '<TAB>',
})
require("wilder").set_option('renderer', require("wilder").popupmenu_renderer(
    require("wilder").popupmenu_border_theme({
    left = {' ', require("wilder").popupmenu_devicons()},
    highlighter = require("wilder").basic_highlighter(),
    min_width = '100%',
    min_height = '20%',
    max_height = '10%',
    highlights = {
      border = 'Normal', -- highlight to use for the border
    },
    border = 'rounded',
  })
  ))

 -----------------------------------------------------------
 -- lsp saga
 -----------------------------------------------------------

use({
    "glepnir/lspsaga.nvim",
    branch = "main",
})

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
  attach_navic = true,
  create_autocmd = true,
  include_buftypes = { "" },
  exclude_filetypes = { "toggleterm" },
  modifiers = {
    dirname = ":~:.",
    basename = "",
  },
  custom_section = function()
    return ""
  end,
  show_modified = true,

  symbols = {
    modified = "●",
    ellipsis = "…",
    separator = "",
  },
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
