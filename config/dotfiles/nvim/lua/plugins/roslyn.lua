-- C# language server: Microsoft's Roslyn server, driven by seblyng/roslyn.nvim.
-- The `roslyn-language-server` binary comes from mise ("dotnet:roslyn-language-server"); the plugin
-- finds it on PATH. Switch solutions with `:Roslyn target`.
return {
  {
    "seblyng/roslyn.nvim",
    ft = { "cs", "razor" },
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    opts = {
      -- Let the Roslyn server watch files itself. With the default ("auto"), Neovim's watcher prints
      -- "watch.watch: ENOENT" on every C# session; "off" would stop change detection entirely.
      filewatching = "roslyn",
      -- Search parent directories for a .sln/.slnx when the project is nested below it.
      broad_search = false,
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = function()
      vim.lsp.config("roslyn", {
        settings = {
          ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
            csharp_enable_inlay_hints_for_lambda_parameter_types = true,
            csharp_enable_inlay_hints_for_types = true,
            dotnet_enable_inlay_hints_for_parameters = true,
            dotnet_enable_inlay_hints_for_literal_parameters = true,
          },
          ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
          },
          ["csharp|completion"] = {
            dotnet_show_completion_items_from_unimported_namespaces = true,
            dotnet_show_name_completion_suggestions = true,
          },
        },
      })
    end,
  },
}
