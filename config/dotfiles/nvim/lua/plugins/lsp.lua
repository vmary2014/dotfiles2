-- Language servers. Binaries on PATH come from mise (see ~/.config/mise/mise.toml); Mason is only
-- used for what mise cannot provide (OmniSharp, csharpier, netcoredbg, js-debug-adapter).
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Lua: lua-language-server from mise
        lua_ls = {
          mason = false,
          settings = {
            Lua = {
              workspace = { checkThirdParty = false },
              completion = { callSnippet = "Replace" },
              hint = { enable = true, setType = true },
              diagnostics = { globals = { "vim" } },
            },
          },
        },

        -- TypeScript / JavaScript: @vtsls/language-server from mise
        vtsls = {
          mason = false,
          settings = {
            typescript = {
              inlayHints = {
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
          },
        },

        -- C#: omnisharp from mise (the dotnet extra supplies handlers/keys; we only override how it starts)
        omnisharp = {
          mason = false,
          cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
        },
      },
    },
  },

  -- Mason: do not auto-install what mise already provides
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      local provided_by_mise =
        { "stylua", "lua-language-server", "vtsls", "prettierd", "prettier", "eslint_d", "omnisharp", "netcoredbg" }
      opts.ensure_installed = vim.tbl_filter(function(name)
        return not vim.tbl_contains(provided_by_mise, name)
      end, opts.ensure_installed or {})
    end,
  },
}
