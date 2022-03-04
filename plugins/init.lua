return {
   { "williamboman/nvim-lsp-installer" },
   { "AndrewRadev/tagalong.vim" },
   { "mg979/vim-visual-multi" },
   { "github/copilot.vim" },
   { "hrsh7th/cmp-copilot" },
   {
      "ur4ltz/surround.nvim",
      config = function()
         require("surround").setup { mappings_style = "sandwich" }
      end,
   },
   {
      "alvan/vim-closetag",
      config = function()
         require "custom.configs.closetag"
      end,
   },
   {
      "907th/vim-auto-save",
      config = function()
         require "custom.configs.autosave"
      end,
   },
   {
      "dense-analysis/ale",
      config = function()
         require "custom.configs.ale"
      end,
   },
   {
      "tami5/lspsaga.nvim",
      config = function()
         require "custom.configs.lspsaga"
      end,
   },
   {
      "p00f/nvim-ts-rainbow",
      config = function()
         require "custom.configs.rainbow"
      end,
   },
   {
      "folke/lsp-colors.nvim",
      config = function()
         require "custom.configs.rainbow"
      end,
   },
   {
      "EdenEast/nightfox.nvim",
      config = function()
         require "custom.configs.nightfox-colorscheme"
      end,
   },
   {
      "lewis6991/gitsigns.nvim",
      requires = {
         "nvim-lua/plenary.nvim",
      },
      config = function()
         require "custom.configs.git"
      end,
   },
   {
      "windwp/nvim-ts-autotag",
      config = function()
         require "custom.configs.autotags"
      end,
   },
   {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
         require "custom.configs.null_ls"
      end,
   },
}
