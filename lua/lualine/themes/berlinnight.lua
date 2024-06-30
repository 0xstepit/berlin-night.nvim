local colors = require("berlinnight.colors").setup({ transform = true })
local config = require("berlinnight.config").options

local berlinnight = {}

-- Normal mode colors. a will be used also for x,
-- b for y, and c for z to have a symmetrical coloration.
berlinnight.normal = {
  a = { bg = colors.base13, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.base13 },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

-- Insert mode colors. a will be used also for x,
-- b for y, and c for z to have a symmetrical coloration.
berlinnight.insert = {
  a = { bg = colors.cyan, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.cyan },
}

-- Command mode colors. a will be used also for x,
-- b for y, and c for z to have a symmetrical coloration.
berlinnight.command = {
  a = { bg = colors.pink1, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.pink1 },
}

-- Visual mode colors. a will be used also for x,
-- b for y, and c for z to have a symmetrical coloration.
berlinnight.visual = {
  a = { bg = colors.purple, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.purple },
}

-- Replace mode colors. a will be used also for x,
-- b for y, and c for z to have a symmetrical coloration.
berlinnight.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

-- Terminal mode colors. a will be used also for x,
-- b for y, and c for z to have a symmetrical coloration.
berlinnight.terminal = {
  a = { bg = colors.green1, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green1 },
}

-- Inactive mode colors. Only c seems to be applied here
berlinnight.inactive = {
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

-- If bold is specified, apply if to the section a in all
-- modes.
if config.lualine_bold then
  for _, mode in pairs(berlinnight) do
    mode.a.gui = "bold"
  end
end

return berlinnight
