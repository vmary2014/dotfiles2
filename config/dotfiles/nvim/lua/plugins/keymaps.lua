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
  -- LSP (applies to every attached server). Per-server keys go in lua/plugins/lsp.lua.
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- keys[#keys + 1] = { "<leader>cx", vim.lsp.buf.code_action, desc = "Code Action", has = "codeAction" }
    end,
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
