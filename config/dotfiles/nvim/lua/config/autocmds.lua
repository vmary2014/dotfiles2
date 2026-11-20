-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here with `vim.api.nvim_create_autocmd`.
-- Or remove existing ones by group name, e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Start typing as soon as a terminal window gets focus. Snacks only calls `startinsert` on BufEnter,
-- which does not fire when you move into a window that already shows the terminal buffer (Cmd+h/l,
-- <C-w>l, a mouse click), so the terminal stayed in normal mode until you pressed `i`.
vim.api.nvim_create_autocmd("WinEnter", {
  group = vim.api.nvim_create_augroup("user_terminal_autoinsert", { clear = true }),
  callback = function()
    if vim.bo.buftype == "terminal" and vim.fn.mode() == "n" then
      vim.cmd("startinsert")
    end
  end,
})
