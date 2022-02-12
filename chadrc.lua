local userPlugins = require "custom.plugins" -- path to table
local userConfigs = require "custom.plugins.configs"
local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}
M.options = {
  relativenumber = true,
  swap = false,
  wrap = false,
}

M.mappings.plugins = {
  comment = {
    toggle = "<leader>c",
  },
  nvimtree = {
    toggle = "<C-m>",
    focus = "<leader>m"
  }
}

M.ui = {
  theme = "chadracula"
    }

M.plugins = {
  default_plugin_remove = {
    "lewis6991/gitsigns.nvim"
  },
  install = userPlugins,
  status = {
    colorizer = true,
    autopairs = true,
    dashboard = true,
    lspkind = true,
  },
   options = {
      lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   default_plugin_config_replace = {
     nvim_tree = userConfigs.nvimtree
   },
}

return M
