local util = require("berlinnight.util")

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  -- Basic
  black = "#191919",
  white = "#F2F2F2",

  -- Base color
  base = "#1A91E5", -- color theme starting color
  base1 = "#75BDF0", -- starting color with base theme light

  -- Tint of base
  base3 = "#1AB2E5",

  base2 = "#7594F0",

  -- Greys
  grey1 = "#121B21",
  grey2 = "#243642",
  grey3 = "#365063",
  grey4 = "#476B85",
  grey5 = "#8BAAC1",
  grey6 = "#ACC2D2",
  grey7 = "#CDDBE4",
  grey8 = "#EEF3F6",

  -- Tint of base math
  orange = "#E56F1A",

  orange1 = "#F0A875",
  yellow1 = "#F0E575",
  red1 = "#F07580",
  magenta1 = "#E575F0",
  purple1 = "#A875F0",
  blue1 = "#7580F0",
  cyan1 = "#75F0E6",
  green1 = "#80F075",

  -- Additional
  pink1 = "#FF007C",
  pink2 = "#FF99CB",

  blue = "#1A2BE5",

  cyan11 = "#0F8A80",
  cyan = "#1AE5D4",

  red11 = "#8A0F1A",
  green11 = "#1A8A0F",
  blue11 = "#0F1A8A",
}

M.night = {
  bg = "#1a1b26",
  bg_dark = "#16161e",
}
M.day = M.night

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("berlinnight.config")

  local style = config.is_day() and config.options.light_style or config.options.style
  local palette = M[style] or {}
  if type(palette) == "function" then
    palette = palette()
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

  -- Customization
  colors.bg_dark = colors.grey1
  colors.bg = colors.black
  colors.bg_highlight = colors.black
  colors.terminal_black = colors.black

  -- Original
  colors.fg = colors.white
  colors.fg_dark = colors.grey4
  colors.fg_gutter = colors.grey3

  colors.dark3 = colors.grey6
  colors.dark5 = colors.grey7

  colors.comment = colors.grey4

  colors.blue2 = colors.base1
  colors.blue5 = colors.base2
  colors.blue1 = colors.cyan1
  colors.blue6 = colors.base2
  colors.blue7 = colors.base3
  colors.teal = colors.base2

  colors.orange = colors.orange1
  colors.yellow = colors.yellow1
  colors.red = colors.red1
  colors.magenta = colors.magenta1
  colors.purple = colors.purple1
  colors.blue = colors.blue1
  colors.cyan = colors.cyan1
  colors.green = colors.green1

  -- Git
  colors.git = {
    add = colors.green,
    change = colors.yellow,
    delete = colors.red,
    ignore = colors.dark3,
  }

  colors.gitSigns = {
    add = colors.green,
    change = colors.yellow,
    delete = colors.red,
    untrcked = colors.grey3,
  }

  colors.diff = {
    add = colors.green11, -- background of added lines
    delete = "#5C0A11", -- background of deleted lines
    change = "#0A115C", -- background of changed lines
    text = colors.grey3, -- background of changed characters
  }

  -- Utils
  util.bg = colors.bg
  util.day_brightness = config.options.day_brightness

  colors.black = colors.bg
  colors.border_highlight = colors.blue1
  colors.border = colors.bg

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = colors.grey4
  colors.bg_search = colors.pink1
  colors.fg_sidebar = colors.fg_dark
  -- colors.fg_float = config.options.styles.floats == "dark" and colors.fg_dark or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  config.options.on_colors(colors)
  if opts.transform and config.is_day() then
    util.invert_colors(colors)
  end

  return colors
end

return M
