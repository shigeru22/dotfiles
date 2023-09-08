require("manager")

local plugins_list = {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "nvim-tree/nvim-web-devicons"
  },
  {
    "nvim-lualine/lualine.nvim"
  },
  {
    "willothy/nvim-cokeline",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    }
  },
  {
    'Bekaboo/dropbar.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "ldelossa/litee-symboltree.nvim",
    dependencies = {
      "ldelossa/litee.nvim"
    }
  },
  {
    "f-person/git-blame.nvim"
  },
  {
    "lewis6991/gitsigns.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  {
    "lukas-reineke/indent-blankline.nvim"
  },
  {
    "echasnovski/mini.nvim",
    version = false
  },
  {
    "ggandor/lightspeed.nvim",
    dependencies = {
      "tpope/vim-repeat"
    }
  },
  {
    "nacro90/numb.nvim"
  },
  -- {
  --   "kizza/actionmenu.nvim"
  -- },
  -- {
  --   "meznaric/conmenu"
  -- },
  -- {
  --   "kamykn/popup-menu.nvim"
  -- },
  {
    "MunifTanjim/nui.nvim"
  },
  {
    "numToStr/Comment.nvim"
  },
  {
    "stevearc/dressing.nvim"
  },
  {
    "neovim/nvim-lspconfig"
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip"
    }
  },
  {
    "editorconfig/editorconfig-vim"
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      "nvim-treesitter/nvim-treesitter"
    }
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  }
}

require("lazy").setup(plugins_list)

require("plugin-settings")
require("lsp-settings")
