local util = require("tokyonight.util")

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  -- Basic
  black = "#191919",
  white = "#F2F2F2",

  -- Base color
  base = "#1A91E5",

  -- Tint of base
  base1 = "#1A4CE5",
  base2 = "#1A6FE5",
  base3 = "#1AB2E5",
  base4 = "#1AD4E5",

  -- Shades of base
  base11 = "#7594F0",
  base12 = "#75A8F0",
  base13 = "#75D1F0",
  base14 = "#75E5F0",

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
  orange11 = "#8A420F",
  orange = "#E56F1A",
  orange1 = "#F0A875",
  orange2 = "#FAE2D1",

  yellow11 = "#8A800F",
  yellow = "#E5D41A",
  yellow1 = "#F0E575",
  yellow2 = "#FAF6D1",

  red11 = "#8A0F1A",
  red = "#E51A2B",
  red1 = "#F07580",
  red2 = "#FAD1D4",

  magenta11 = "#800F8A",
  magenta = "#D41AE5",
  magenta1 = "#E575F0",
  magenta2 = "#F6D1FA",

  -- Additional
  pink1 = "#FF007C",
  pink2 = "#FF99CB",
  pink3 = "#FFCCE5",

  purple11 = "#2C0A5C",
  purple = "#6F1AE5",
  purple1 = "#A875F0",
  purple2 = "#E2D1FA",

  blue11 = "#0F1A8A",
  blue = "#1A2BE5",
  blue1 = "#7580F0",
  blue2 = "#D1D4FA",

  cyan11 = "#0F8A80",
  cyan = "#1AE5D4",
  cyan1 = "#75F0E6",
  cyan2 = "#D1FAF7",

  green11 = "#1A8A0F",
  green = "#2BE51A",
  green1 = "#80F075",
  green2 = "#D4FAD1",
}

M.night = {
  bg = "#1a1b26",
  bg_dark = "#16161e",
}
M.day = M.night

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("tokyonight.config")

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

  colors.blue = colors.base11
  colors.blue0 = colors.base12
  colors.blue2 = colors.base13
  colors.blue5 = colors.base14
  colors.blue1 = colors.base13
  colors.blue6 = colors.base2
  colors.blue7 = colors.base3

  colors.cyan = colors.cyan1

  colors.magenta = colors.purple1
  colors.magenta2 = colors.magenta11

  colors.purple = colors.purple1
  colors.orange = colors.orange1
  colors.yellow = colors.yellow1

  colors.green = colors.cyan1
  -- colors.green1 = colors.green
  colors.green2 = colors.green11

  -- Git
  colors.git = { change = "#6183bb", add = "#449dab", delete = "#914c54" }

  colors.gitSigns = {
    add = "#80F075",
    change = "#E5D41A",
    delete = "#E51A2B",
  }

  colors.diff = {
    add = "#115C0A", -- background of added lines
    delete = "#5C0A11", -- background of deleted lines
    change = "#0A115C", -- background of changed lines
    text = colors.grey3, -- background of changed characters
  }

  colors.teal = colors.base14

  util.bg = colors.bg

  util.day_brightness = config.options.day_brightness

  colors.git.ignore = colors.dark3
  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = util.darken(colors.blue1, 0.8)
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

  colors.delta = {
    add = util.darken(colors.green2, 0.45),
    delete = util.darken(colors.red1, 0.45),
  }

  config.options.on_colors(colors)
  if opts.transform and config.is_day() then
    util.invert_colors(colors)
  end

  return colors
end

return M
