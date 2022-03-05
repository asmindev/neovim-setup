local null = require "null-ls"
local formatter = null.builtins.formatting
local diagnostics = null.builtins.diagnostics
local sources = {
   formatter.clang_format,
   formatter.stylua,
   -- formatter.reorder_python_imports,
   formatter.black.with { extra_args = { "--fast" } },
   -- formatter.eslint_d,
   -- formatter.prettier.with { extra_args = { "--no-semi", "--single-qoute" } },
   -- diagnostics.eslint,
   diagnostics.cppcheck,
   diagnostics.php,
}

null.setup {
   -- you can reuse a shared lspconfig on_attach callback here
   corb = { "cok" },
   sources = { sources = sources },
   on_attach = function(client)
      if client.resolved_capabilities.document_formatting then
         vim.cmd [[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting(null, 4000)
            augroup END
            ]]
      end
   end,
}
