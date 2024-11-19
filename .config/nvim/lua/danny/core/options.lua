-- :Explorer
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.rnu = true
opt.number = true

-- Tabs et indentation.
opt.tabstop = 2 -- 2 espaces pour tabs
opt.shiftwidth = 2 -- 2 espaces pour taille indentation
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- auto indent starrting from current line when starting new one
opt.wrap = false

-- Search.
opt.ignorecase = true -- ignore case when searching.
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive.

opt.cursorline = true

-- Turn on termguicolors for tokyonight colorscheme to work.
-- (use true color terminal).
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be dark.
opt.signcolumn = "yes" -- show sign colon so that text doesn't shift.

-- Backspace.
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position.

-- Clipboard.
opt.clipboard:append("unnamedplus") -- use system clipboard as default register.

-- Split windows.
opt.splitright = true -- split vertical window to the right.
opt.splitbelow = true -- split horizontal window to the right.
