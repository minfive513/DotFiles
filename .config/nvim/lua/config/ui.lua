local colors = {
    bg = "#1e1e1e",
    bg_dark = "#181818",
    bg_float = "#252526",

    border = "#d4d4d4",

    fg = "#d4d4d4",
    fg_muted = "#808080",

    cursorline = "#252525",

    blue = "#569cd6",
    green = "#6a9955",
    yellow = "#dcdcaa",
}

-----------------------------------------------------------
-- Main editor
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "Normal", {
    bg = colors.bg,
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, "NormalNC", {
    bg = colors.bg_dark,
    fg = colors.fg,
})

-----------------------------------------------------------
-- Cursor line
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "CursorLine", {
    bg = colors.cursorline,
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = colors.blue,
    bold = true,
})

-----------------------------------------------------------
-- Line numbers
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "LineNr", {
    fg = colors.fg_muted,
})

-----------------------------------------------------------
-- Floating windows
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "TelescopeNormal", {
    bg = colors.bg_dark,
})

vim.api.nvim_set_hl(0, "TelescopeBorder", {
    bg = colors.bg_dark,
    fg = colors.border,
})

vim.api.nvim_set_hl(0, "NormalFloat", {
    bg = colors.bg_dark,
})

vim.api.nvim_set_hl(0, "FloatBorder", {
    bg = colors.bg_dark,
    fg = colors.border,
})

-----------------------------------------------------------
-- Sign column
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "SignColumn", {
    bg = colors.bg,
})

-----------------------------------------------------------
-- Statusline
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "StatusLine", {
    bg = colors.bg_dark,
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
    bg = colors.bg_dark,
    fg = colors.fg_muted,
})

-----------------------------------------------------------
-- Vertical separators
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "WinSeparator", {
    fg = colors.border,
    bg = colors.bg,
})

-----------------------------------------------------------
-- Search
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "Search", {
    bg = "#264f78",
    fg = "#ffffff",
})

vim.api.nvim_set_hl(0, "IncSearch", {
    bg = "#569cd6",
    fg = "#ffffff",
})

-----------------------------------------------------------
-- Visual selection
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "Visual", {
    bg = "#264f78",
})

-----------------------------------------------------------
-- Pmenu / Completion
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "Pmenu", {
    bg = colors.bg_float,
    fg = colors.fg,
})

vim.api.nvim_set_hl(0, "PmenuSel", {
    bg = "#094771",
    fg = "#ffffff",
})

-----------------------------------------------------------
-- Tabline
-----------------------------------------------------------

vim.api.nvim_set_hl(0, "TabLine", {
    bg = colors.bg_dark,
    fg = colors.fg_muted,
})

vim.api.nvim_set_hl(0, "TabLineSel", {
    bg = colors.bg,
    fg = colors.fg,
    bold = true,
})

vim.api.nvim_set_hl(0, "TabLineFill", {
    bg = colors.bg_dark,
})
