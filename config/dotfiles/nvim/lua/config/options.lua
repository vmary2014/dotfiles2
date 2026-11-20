-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- TypeScript LSP: "vtsls" (default, installed by mise) or "tsc" (TypeScript 7 native server)
vim.g.lazyvim_ts_lsp = "vtsls"

-- Leader keys (LazyVim defaults, listed here so they are easy to change)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.relativenumber = true
opt.scrolloff = 8
opt.wrap = false
opt.colorcolumn = "120"

-- Indentation (per-language overrides live in after/ftplugin/)
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
