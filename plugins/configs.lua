local M = {}
M.nvimtree = {
  update_cwd = true,
  view = {
    hide_root_folder = false,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      window_picker = {
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      },
    }
  }
}

M.bufferline = {
  show_close_icon = false,
  diagnostics = "nvim_lsp",
  diagnostics_update_in_insert = false,
  diagnostics_indicator = function(count, level, diagnostics_dict, context)
    return "("..count..")"
  end,
}
return M
