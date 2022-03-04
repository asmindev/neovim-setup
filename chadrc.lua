local userPlugins = require "custom.plugins" -- path to table
local userConfigs = require "custom.plugins.configs"
local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}
M.options = {
   relativenumber = true,
}

M.mappings.plugins = {
   comment = {
      toggle = "<leader>c",
   },
   nvimtree = {
      toggle = "<C-m>",
      focus = "<leader>m",
   },
}
M.ui = {
   hl_override = "custom.configs.highlight",
   theme = "chadracula",
}

M.plugins = {
   default_plugin_remove = {
      "lewis6991/gitsigns.nvim",
   },
   install = userPlugins,
   status = {
      alpha = true,
      lspkind = true,
      colorizer = true,
      autopairs = true,
   },
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   default_plugin_config_replace = {
      nvim_tree = userConfigs.nvimtree,
      bufferline = userConfigs.bufferline,
   },
}
M.setup_lsp = function(attach, capabilities)
   local lsp_installer = require "nvim-lsp-installer"
   lsp_installer.settings {
      ui = {
         icons = {
            server_installed = "✓",
            server_pending = "",
            server_uninstalled = "✗",
         },
      },
   }

   lsp_installer.on_server_ready(function(server)
      local opts = {
         on_attach = attach,
         capabilities = capabilities,
         flags = {
            debounce_text_changes = 150,
         },
         settings = {},
      }

      -- basic example to edit lsp server's options, disabling tsserver's inbuilt formatter
      if server.name == "tsserver" then
         opts.on_attach = function(client, bufnr)
            client.resolved_capabilities.document_formatting = false
            client.resolved_capabilities.document_range_formatting = false
         end
      end
      server:setup(opts)
      vim.cmd [[ do User LspAttachBuffers ]]
   end)
end

return M
