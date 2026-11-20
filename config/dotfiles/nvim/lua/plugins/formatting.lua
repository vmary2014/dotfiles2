-- Formatters (conform.nvim). Binaries come from mise, except csharpier (Mason, via the dotnet extra).
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        json = { "prettierd" },
        jsonc = { "prettierd" },
        yaml = { "prettierd" },
        markdown = { "prettierd" },
        cs = { "csharpier" },
      },
    },
  },
}
