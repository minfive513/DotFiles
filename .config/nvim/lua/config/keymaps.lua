
-- ==============================
--   Keybindings
-- ==============================
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "TreeView" })
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", { desc = "Dateien suchen" })

-- DAP Keymaps
local dap = require("dap")
vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debugger: Start/Continue" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debugger: Step Over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debugger: Step Into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debugger: Step Out" })
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debugger: Toggle Breakpoint" })
vim.keymap.set("n", "<leader>B", function()
    dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "Debugger: Conditional Breakpoint" })
vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Debugger: REPL" })
vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Debugger: Run Last" })

-- Remote Debuuger keymap
 vim.keymap.set("n", "<F7>", function()
    require("dap").continue()
end, { desc = "Debugger: Continue/Connect Remote" })

vim.keymap.set("n", "<F6>", function()
    require("dap").run(dap.configurations.python[2])
end, { desc = "Debugger: Attach to Remote" })


-- Telescope (Suche) Keymap
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- naviagtion Shortcuts
-- Gehe zu Definition F12
--vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, { desc = "Gehe zur Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.definition, { desc = "Go to Declaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.declaration, { desc = "Go to Definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "All references" })
vim.keymap.set("n", "gi", vim.lsp.buf.references, { desc = "Go to Implementation" })


-- Show all Diagnostics (wie in VSCode mit F11)
vim.keymap.set("n", "<leader>j", "<cmd>Telescope diagnostics<CR>", { desc = "Show all diagnostics" })
-- Show Diagnostics for current line F10
-- Diagnostics Popup unter Cursor öffnen
vim.keymap.set("n", "<leader>h", vim.diagnostic.open_float, { desc = "Show diagnostics popup" })


-- navigate between files with mouse buttons
vim.keymap.set('', '<X1Mouse>', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('', '<X2Mouse>', ':bnext<CR>', { noremap = true, silent = true })


-- to select all intented code after one intentadtion
vim.keymap.set("x", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("x", ">", ">gv", { noremap = true, silent = true })

-- Ident remapping from < > to Tab Shift-Tab
vim.keymap.set("n", "<TAB>", ">gv");
vim.keymap.set("v", "<TAB>", ">gv");
vim.keymap.set("n", "<S-TAB>", "<gv");
vim.keymap.set("v", "<S-TAB>", "<gv");

-- Jump Forwards/Backwards
vim.keymap.set("n", "<leader>o", "<C-o>", { desc = "Jump backward" })
vim.keymap.set("n", "<leader>i", "<C-i>", { desc = "Jump forward" })

-- Remapd "d" to delte without move to clipboard:
vim.keymap.set("v", "d", '"_d', { noremap = true })

-- Keep clipboard conent after paste
vim.keymap.set("v", "p", '"_dP', { noremap = true, silent = true })


-- NEU: ESC beendet Terminal-Mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- NEU: Window-Navigation mit Ctrl+hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })

-- NEU: Schnelleres Speichern
vim.keymap.set("n", "<leader>w", ":wa<CR>", { desc = "Save file" })
