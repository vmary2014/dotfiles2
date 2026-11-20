-- Plugin-bound keymaps. Add `keys = { ... }` entries to the plugin that owns them so that lazy.nvim
-- loads the plugin on first use. Entries are merged with LazyVim's defaults; set `false` as the rhs
-- to disable a default: { "<leader>fp", false }.
--
-- Example:
--   {
--     "nvim-telescope/telescope.nvim",
--     keys = {
--       { "<leader>fp", function() require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
--     },
--   },
return {
  -- LSP keys for every attached server (LazyVim's current API; `has` limits a key to servers that
  -- support the capability). Per-server keys go under that server in lua/plugins/lsp.lua.
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            -- { "<leader>cx", vim.lsp.buf.code_action, desc = "Code Action", has = "codeAction" },
          },
        },
      },
    },
  },

  -- Debugging (nvim-dap)
  {
    "mfussenegger/nvim-dap",
    optional = true,
    keys = {},
  },

  -- Testing (neotest)
  {
    "nvim-neotest/neotest",
    optional = true,
    keys = {},
  },
}
