-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.copilot_proxy = vim.env.HTTPS_PROXY or vim.env.HTTP_PROXY or vim.env.https_proxy or vim.env.http_proxy

vim.opt.clipboard = "unnamed"
vim.opt.showbreak = "↪"
vim.opt.listchars = "tab:→ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨"
