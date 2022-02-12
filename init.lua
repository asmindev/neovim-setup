local map = require("core.utils").map
map("n", "<leader>d", "dd", opt) -- example to delete the buffer
map("n", "<space>", ":Lspsaga hover_doc<CR>", opt) -- example to delete the buffer



-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

require "custom.configs.lspsaga"
require "custom.configs.ale"
require "custom.configs.git"
require "custom.configs.autosave"
require "custom.configs.closetag"
require "custom.configs.blankline"
require('palenight').set()

vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
vim.cmd [[ autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]
vim.cmd [[ autocmd Filetype vue setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]

