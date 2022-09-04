require ("user.options")
require ("user.plugins")
require ('user.alpha')
require ('user.autocomands')
require ('user.autopairs')
require ('user.bufferline')
require ('user.cmp')
require ('user.colorschemes')
require ('user.comment')
require ('user.gitsigns')
require ('user.impatient')
require ('user.keymaps')
-- require ('user.lualine')
require ('user.airline')
require ('user.nvim-tree')
require ('user.project')
require ('user.statusline')
require ('user.toggleterm')
require ('user.treesitter')
--[[ require ('user.cocnvim') ]]
require ('user.whichkey')


local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_linux = has "linux"
local is_win = has "win32"

if is_mac then
  require('user.macos')
end
if is_linux then
  require('user.linux')
end
if is_win then
  require('user.windows')
end

