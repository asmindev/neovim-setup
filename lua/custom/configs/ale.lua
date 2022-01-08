vim.g.ale_fix_on_save = 1
vim.g.ale_lint_on_save = 1
vim.g.ale_fixers = {
  javascript = {'eslint'},
  typescript = {'eslint'},
  javascriptreact = {'eslint', 'prettier'},
  python = {'black','autopep8'},
  vue =  {'eslint', 'prettier'},
  html =  {'eslint', 'prettier'},
  json = {'prettier'},
  cpp = {'clang-format', 'clangtidy'},
}
vim.g.ale_linters = {
  python =  {'bandit','pylama'},
  javascript = {'eslint', 'prettier'},
  typescript = {'eslint', 'prettier'},
  vue = {'eslint', 'vls', 'prettier'},
  json = {'prettier'},
  cpp = {'clangd', 'cc'},
  html = {'eslint', 'prettier'},
}

vim.g.ale_sign_error = " "
vim.g.ale_sign_warning = " "
vim.g.ale_echo_msg_error_str = " "
vim.g.ale_echo_msg_warning_str = " "
vim.g.ale_floating_window_border = {'', '', '', '', '', '', ''}
 -- vim.g.ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']
vim.g.ale_virtualtext_cursor = 1
vim.g.ale_echo_msg_format = '%linter%: %severity%  %s'
vim.g.ale_warn_about_trailing_whitespace = 1
vim.g.ale_floating_preview = 1
vim.g.ale_hover_to_floating_preview = 1
vim.g.ale_detail_to_floating_preview = 1
vim.g.ale_use_global_executables = 1
-- vim.g.ale_cursor_detail = 1
vim.g.ale_hover_cursor = 1
vim.g.ale_close_preview_on_insert = 1

-- vue section
vim.g.ale_linter_aliases = {vue = {'vue', 'javascript'}}

-- " Do not lint or fix minified files.
-- vim.g.ale_pattern_options = {
--   \.min\.js$ = {'ale_linters': {}, 'ale_fixers': {}},
--   \.min\.css$ = {'ale_linters': {}, 'ale_fixers': {}},
-- }

-- " If you configure g:ale_pattern_options outside of vimrc, you need this.
vim.g.ale_pattern_options_enabled = 1
vim.g.ale_javascript_prettier_options = '--single-quote --no-semi --tab-width=4'
vim.g.ale_html_prettier_options = '--single-quote --no-semi --tab-width=4'
vim.g.ale_vue_prettier_options = '--single-quote --no-semi'
