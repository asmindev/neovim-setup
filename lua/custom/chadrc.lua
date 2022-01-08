local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}
M.options = {
  wrap = true,
  relativenumber = true,
  swap = false,
}

M.mappings.plugins = {
  comment = {
    toggle = "<leader>/",
  },
  nvimtree = {
    toggle = "<C-m>",
    focus = "<leader>m"
  }
}

M.ui = {
  theme = "onenord"
    }

M.plugins = {
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
   },
}

return M
