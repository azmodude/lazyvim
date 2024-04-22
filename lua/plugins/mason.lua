local internal = require("../custom/functions")

-- only ensure installed Mason LSPs when under Darwin or not under Nix
-- Mason does not work/is not needed for Nix
if not internal.isNix() then
  return {
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          -- markdown
          "marksman",
          "markdownlint",
          -- lua
          "stylua",
          -- sh
          "bash-language-server",
          "shfmt",
          "shellcheck",
          "shellharden",
          -- golang
          "delve",
          "gopls",
          "gofumpt",
          "golines",
          -- ansible
          "ansible-language-server",
          "ansible-lint",
        },
      },
    },
  }
else
  -- completely disable mason on Nix
  return {
    {
      "williamboman/mason.nvim",
      enabled = false,
    },
  }
end
