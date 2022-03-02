return {        
  {"ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "sandwich"}
    end
  },
  {"AndrewRadev/tagalong.vim"},
  {"alvan/vim-closetag"},
  {"907th/vim-auto-save"},
  {"dense-analysis/ale"},
  {"mg979/vim-visual-multi"},
  {"tami5/lspsaga.nvim"},
  {"p00f/nvim-ts-rainbow"},
  {"folke/lsp-colors.nvim"},
  {"github/copilot.vim"},
  {'hrsh7th/cmp-copilot'},
  {'EdenEast/nightfox.nvim',
    config = function() 
      require "custom.configs.nightfox-colorscheme"
    end
  },
  {'williamboman/nvim-lsp-installer'},
  {"lewis6991/gitsigns.nvim",
    requires = {
      'nvim-lua/plenary.nvim'
    },
  },
}

