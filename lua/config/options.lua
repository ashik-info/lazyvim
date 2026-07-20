-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options hervim.opt.relativenumber = true
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.timeoutlen = 300
vim.opt.updatetime = 250

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Ensure mise-managed tools are available even when Neovim is launched
-- outside an interactive terminal.
local mise_shims = vim.fn.expand("~/.local/share/mise/shims")

if vim.fn.isdirectory(mise_shims) == 1 then
  local path = vim.env.PATH or ""

  if not path:find(mise_shims, 1, true) then
    vim.env.PATH = mise_shims .. ":" .. path
  end
end
