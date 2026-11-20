-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- Add your own keymaps in this file, grouped by section. Use `vim.keymap.set(mode, lhs, rhs, opts)`.
-- Plugin-specific keymaps (LSP, telescope, neo-tree, dap, ...) belong in lua/plugins/keymaps.lua,
-- because they need the plugin's own `keys = {}` spec to be lazy-loaded correctly.

local map = vim.keymap.set

-- ── General ────────────────────────────────────────────────────────────────────

-- ── Navigation / windows / buffers ─────────────────────────────────────────────
-- Cmd+h / Cmd+l move between windows. Ghostty sends these as CSI-u (see the nvim-window-nav block in
-- ~/.config/ghostty/config), which Neovim reads as <D-h> / <D-l>. Neovide/GUIs send <D-*> natively.
map({ "n", "x" }, "<D-h>", "<C-w>h", { desc = "Go to Left Window" })
map({ "n", "x" }, "<D-l>", "<C-w>l", { desc = "Go to Right Window" })
map("t", "<D-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
map("t", "<D-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })

-- ── Editing ────────────────────────────────────────────────────────────────────

-- ── Lua ────────────────────────────────────────────────────────────────────────

-- ── TypeScript ─────────────────────────────────────────────────────────────────

-- ── .NET / C# ──────────────────────────────────────────────────────────────────
