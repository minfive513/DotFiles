-- ==============================
--   Basis-Einstellungen
-- ==============================
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.g.mapleader = " "
vim.o.guifont = "CommitMono Nerd Font:h11:b"
vim.opt.cmdheight = 1
vim.o.winborder = "single"

-- line wrapping
vim.o.wrap = true
vim.o.breakindent = true
vim.o.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
vim.o.linebreak = true
vim.opt.clipboard = "unnamedplus"


vim.o.updatetime = 250  -- Schnelleres CursorHold (war vorher default 4000ms)
vim.o.timeoutlen = 300  -- Schnellere Keymap-Timeouts
vim.opt.undofile = true -- Persistent undo history
vim.opt.swapfile = false -- Kein Swap-File für bessere Performance

-- NEU: Bessere Suche
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false -- Kein dauerhaftes Highlighting nach Suche
