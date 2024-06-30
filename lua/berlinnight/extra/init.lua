local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string}>
-- stylua: ignore
M.extras = {
  alacritty = {ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty"},
  tmux = {ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux"},
  lua = {ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing"},
  fzf = { ext = "zsh", url = "https://github.com/junegunn/fzf", label = "Fzf"},
}

local function write(str, fileName)
  print("[write] extra/" .. fileName)
  vim.fn.mkdir(vim.fs.dirname("extras/" .. fileName), "p")
  local file = io.open("extras/" .. fileName, "w")
  file:write(str)
  file:close()
end

function M.read_file(file)
  local fd = assert(io.open(file, "r"))
  ---@type string
  local data = fd:read("*a")
  fd:close()
  return data
end

function M.write_file(file, contents)
  local fd = assert(io.open(file, "w+"))
  fd:write(contents)
  fd:close()
end

function M.docs()
  local file = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h:h") .. "/README.md"
  local tag = "extras"
  local pattern = "(<%!%-%- " .. tag .. ":start %-%->).*(<%!%-%- " .. tag .. ":end %-%->)"
  local readme = M.read_file(file)
  local lines = {}
  local names = vim.tbl_keys(M.extras)
  table.sort(names)
  for _, name in ipairs(names) do
    local info = M.extras[name]
    table.insert(lines, "- [" .. info.label .. "](" .. info.url .. ") ([" .. name .. "](extras/" .. name .. "))")
  end
  readme = readme:gsub(pattern, "%1\n" .. table.concat(lines, "\n") .. "\n%2")
  M.write_file(file, readme)
end

function M.setup()
  M.docs()
  local berlinnight = require("berlinnight")
  vim.o.background = "dark"

  -- map of style to style name
  local styles = {
    mitte = "",
  }

  for extra, info in pairs(M.extras) do
    package.loaded["berlinnight.extra." .. extra] = nil
    local plugin = require("berlinnight.extra." .. extra)
    for style, style_name in pairs(styles) do
      berlinnight.setup({ style = style })
      berlinnight.load({ style = style })
      vim.cmd.colorscheme("berlinnight-" .. style)
      local colors = require("berlinnight.colors").setup({ transform = true })
      local fname = extra .. "/berlinnight_" .. style .. "." .. info.ext
      colors["_upstream_url"] = "https://github.com/0xstepit/berlinnight.nvim/raw/main/extras/" .. fname
      colors["_style_name"] = "Berlin Night" .. style_name
      colors["_name"] = "berlinnight_" .. style
      write(plugin.generate(colors), fname)
    end
  end
end

return M
