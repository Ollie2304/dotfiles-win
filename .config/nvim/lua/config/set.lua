-- enable line numbers
vim.opt.number = true
-- enable relative line numbers
vim.opt.relativenumber = true

-- open horizontal splits at the bottom
vim.opt.splitbelow = true
-- open vertical splits to the right

vim.opt.splitright = true
-- disable line wrapping
vim.opt.wrap = false

-- sets the number of spaces a tab equals
vim.opt.tabstop = 4
-- sets the number of spaces inserted when pressing tab
vim.opt.softtabstop = 4
-- sets the number of spaces used for autoindentation
vim.opt.shiftwidth = 4
-- insert spaces instead of tabs
vim.opt.expandtab = true

-- sync clipboard with system clipboard
vim.opt.clipboard = "unnamedplus"

-- moves the cursor to the centre when scrolling
vim.opt.scrolloff = 999

-- set the cursor to be positied where there are no characters
-- in visual block mode only
vim.opt.virtualedit = "block"

-- when previewing changes for text replacement show in split window
vim.opt.inccommand = "split"

-- ignore case when typing commands
vim.opt.ignorecase = true

-- enable 24-bit colour support
vim.opt.termguicolors = true
