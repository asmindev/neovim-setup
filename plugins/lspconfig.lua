local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"
   local configs = require "lspconfig.configs"
   local capabilities = vim.lsp.protocol.make_client_capabilities()
   capabilities.offsetEncoding = { "utf-16" }
   capabilities.textDocument.completion.completionItem.snippetSupport = true
   if not configs.ls_emmet then
      configs.ls_emmet = {
         default_config = {
            cmd = { "ls_emmet", "--stdio" },
            filetypes = {
               "html",
               "css",
               "scss",
               "javascript",
               "javascriptreact",
               "typescript",
               "typescriptreact",
               "haml",
               "xml",
               "xsl",
               "pug",
               "slim",
               "sass",
               "stylus",
               "less",
               "sss",
               "vue",
               "php",
            },
            root_dir = function(fname)
               return vim.loop.cwd()
            end,
            settings = {},
         },
      }
   end
   lspconfig.ls_emmet.setup { capabilities = capabilities }
   -- lspservers with default config

   local servers = {
      -- "ccls",
      "jsonls",
      "eslint",
      "html",
      "cssls",
      "tailwindcss",
      "vuels",
      "intelephense",
      "phpactor",
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         flags = {
            debounce_tex,
         },
      }
   end

   -- typescript
   lspconfig.tsserver.setup {
      on_attach = function(client, bufnr)
         client.resolved_capabilities.document_formatting = false
         client.resolved_capabilities.document_range_formatting = false
         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting(null, 2000)<CR>", {})
      end,
   }
   lspconfig.jsonls.setup {
      on_attach = function(client, bufnr)
         client.resolved_capabilities.document_formatting = false
         client.resolved_capabilities.document_range_formatting = false
         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting(null, 2000)<CR>", {})
      end,
   }
   -- lspconfig.ccls.setup {
   --    on_attach = function(client, bufnr)
   --       client.resolved_capabilities.document_formatting = false
   --       client.resolved_capabilities.document_range_formatting = false
   --       vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting(null, 2000)<CR>", {})
   --    end,
   -- }

   lspconfig.clangd.setup {
      on_attach = function(client, bufnr)
         client.resolved_capabilities.document_formatting = false
         client.resolved_capabilities.document_range_formatting = false
         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting(null, 2000)<CR>", {})
      end,
      capabilities = capabilities,
   }

   -- the above tsserver config will remvoe the tsserver's inbuilt formatting
   -- since I use null-ls with denofmt for formatting ts/js stuff.
   lspconfig.pyright.setup {}
end

return M
