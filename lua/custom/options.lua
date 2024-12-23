-- Show white space as actual unicode characters
-- set listchars=tab:\ \ ┊,trail:●,extends:»,precedes:«,nbsp:×,space:·,eol:↓
vim.opt.listchars = {
  tab = "│·",
  trail = "●",
  extends = "»",
  precedes = "«",
  nbsp = "×",
  space = "·",
  eol = "↓",
}

-- toggle whitespace character with leader key + v
-- keymap('n', '<Leader>v', ':set invlist<CR>',opts)

local options = {
  backup = false, -- creates a backup file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  cmdheight = 1, -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0, -- so that `` is visible in markdown files
  fileencoding = "utf-8", -- the encoding written to a file
  termencoding = "utf-8",
  fileencodings = { "utf-8", "ucs-bom", "gb18030", "gbk", "gb2312", "cp936" },
  hlsearch = true, -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  mouse = "a", -- allow the mouse to be used in neovim
  pumheight = 10, -- pop up menu height
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2, -- always show tabs
  smartcase = true, -- smart case
  smartindent = true, -- make indenting smarter again
  autoindent = true,
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  swapfile = false, -- creates a swapfile
  -- termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true, -- enable persistent undo
  updatetime = 300, -- faster completion (4000ms default)
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true, -- convert tabs to spaces
  shiftwidth = 4, -- the number of spaces inserted for each indentation
  tabstop = 4, -- insert 2 spaces for a tab
  cursorline = true, -- highlight the current line
  number = true, -- set numbered lines
  relativenumber = false, -- set relative numbered lines
  numberwidth = 4, -- set number column width to 2 {default 4}
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  wrap = false, -- display lines as one long line
  scrolloff = 15, -- is one of my fav
  sidescrolloff = 8,
  guifont = "Hack Nerd Font Mono:h11", -- the font used in graphical neovim applications
  ruler = true,
  textwidth = 80,
  colorcolumn = "80",
  laststatus = 2,
  softtabstop = 4,
  incsearch = true,
  hidden = true,
  history = 5000,
  magic = true,
  showmatch = true,
  errorbells = false,
  visualbell = false,
  mat = 2, -- How many tenths of a second to blink
  tm = 500,
  t_vb = nil,
  winblend = 0, -- not sure what is does at the moment, hightlight something?
  wildoptions = "pum",
  pumblend = 5,
  background = "dark",
  list = true,
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
vim.cmd([[set formatoptions-=cro]]) -- TODO: this doesn't seem to work

-- Return to last edit position when opening files (You want this!)
vim.cmd([[
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]])
