local cmd = vim.cmd

local override = require("core.utils").load_config().ui.hl_override
local colors = require("colors").get()
local ui = require("core.utils").load_config().ui

local black = colors.black
local black2 = colors.black2
local blue = colors.blue
local darker_black = colors.darker_black
local folder_bg = colors.folder_bg
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local light_grey = colors.light_grey
local line = colors.line
local nord_blue = colors.nord_blue
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local pmenu_bg = colors.pmenu_bg
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local orange = colors.orange
local one_bg3 = colors.one_bg3

-- functions for setting highlights
local fg = require("core.utils").fg

-- Pmenu
fg("CmpItemAbbr", grey)
fg("CmpItemAbbrMatch", green)
fg("CmpItemKind", orange)
fg("CmpItemMenu", white)

