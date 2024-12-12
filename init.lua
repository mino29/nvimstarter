-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("custom.keymaps")
require("custom.options")

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has("macunix")
local is_linux = has("linux")
local is_win = has("win32")

if is_mac then
  require("custom.macos")
end
if is_linux then
  require("custom.linux")
end
if is_win then
  require("custom.windows")
end
