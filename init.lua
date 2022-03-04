local map = require("core.utils").map
map("n", "<leader>d", "dd", opt) -- example to delete the buffer
map("n", "<space>", ":Lspsaga hover_doc<CR>", opt) -- example to delete the buffer
map("n", "<C-p>", ":Lspsaga preview_definition<CR>", opt) -- example to delete the buffer

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with
require "custom.options"
require "custom.configs.blankline"

