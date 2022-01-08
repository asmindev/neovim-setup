local map = require("core.utils").map
map("n", "<leader>d", "dd", opt) -- example to delete the buffer
map("n", "<space>", ":Lspsaga hover_doc<CR>", opt) -- example to delete the buffer

local customPlugins = require "core.customPlugins"
customPlugins.add(function(use)
  use {
    'wilmanbarrios/palenight.nvim',
  }
    use {
      'tami5/lspsaga.nvim',
   }
   use {
    "mg979/vim-visual-multi", 
   }
   use {
     "dense-analysis/ale",
   }
   use {
     "907th/vim-auto-save",
   }
   use {
     "alvan/vim-closetag"
   }
   use {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
  use {
    "AndrewRadev/tagalong.vim"
  }
 end)

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

require "custom.configs.lspsaga"
require "custom.configs.ale"
require "custom.configs.autosave"
require "custom.configs.closetag"
require "custom.configs.blankline"
require('palenight').set()

