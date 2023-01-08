local M = {}

M.base_30 = {
  white = "#ffffff",
  darker_black = "#000000",
  black = "#000000" --  nvim bg
  black2 = "#000000",
  one_bg = "#000000",
  one_bg2 = "#000000",
  one_bg3 = "#000000",
  grey = "#555555",
  grey_fg = "#aaaaaa",
  grey_fg2 = "#555555",
  light_grey = "#aaaaaa",
  red = "#ff5555",
  baby_pink = "#ff5555",
  pink = "#ff55ff",
  line = "#000000", -- for lines like vertsplit
  green = "#55ff55",
  vibrant_green = "#55ff55",
  blue = "#5555ff",
  nord_blue = "#5555ff",
  yellow = "#ffff55",
  sun = "#ffff55",
  purple = "#aa00aa",
  dark_purple = "#aa00aa",
  teal = "#00aaaa",
  orange = "#aa5500",
  cyan = "#55ffff",
  statusline_bg = "#555555",
  lightbg = "#aaaaaa",
  pmenu_bg = "#ff5555",
  folder_bg = "#5555ff",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#555555",
  base02 = "#aaaaaa",
  base03 = "#ff5555",
  base04 = "#aa0000",
  base05 = "#aa5500",
  base06 = "#ffff55",
  base07 = "#55ff55",
  base08 = "#00aa00",
  base09 = "#00aaaa",
  base0A = "#5555ff",
  base0B = "#ff55ff",
  base0C = "#aa00aa",
  base0D = "#00aaaa",
  base0E = "#55ffff",
  base0F = "#ffffff",
}

--vim.opt.bg = "dark"

M = require("base46").override_theme(M, "ega")

return M
