local set = vim.opt

set.wrap = false
set.swapfile = false
set.sidescrolloff = 8
set.scrolloff = 4

vim.g.nvim_tree_icons = {
  folder = {
      default = "",
      empty = "",
      empty_open = "",
      open = "",
      symlink = "",
      symlink_open = "",
   },

}
vim.cmd [[autocmd CursorHold,CursorHoldI * :Lspsaga show_cursor_diagnostics ]]
vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
vim.cmd [[ autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
vim.cmd [[ autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]
vim.cmd [[ autocmd Filetype vue setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]
vim.cmd [[ imap <silent><script><expr> <F2> copilot#Accept("")]]
vim.cmd [[ let g:copilot_no_tab_map = v:true]]
vim.cmd('colorscheme duskfox')
