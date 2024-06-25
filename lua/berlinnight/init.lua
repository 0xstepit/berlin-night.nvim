local util = require("berlinnight.util")
local theme = require("berlinnight.theme")
local config = require("berlinnight.config")

local M = {}

function M._load(style)
  if style and not M._style then
    M._style = require("berlinnight.config").options.style
  end
  if not style and M._style then
    require("berlinnight.config").options.style = M._style
    M._style = nil
  end
  M.load({ style = style, use_background = style == nil })
end

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("berlinnight.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
