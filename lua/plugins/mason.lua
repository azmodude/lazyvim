local internal = require("../custom/functions")

-- only ensure installed Mason LSPs when under Darwin or not under Nix
-- Mason does not work/is not needed for Nix
if not internal.isNix() then
  return {
    {
      "williamboman/mason.nvim",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        vim.list_extend(opts.ensure_installed, { "shfmt" })
        vim.list_extend(opts.ensure_installed, { "shellharden" })
        vim.list_extend(opts.ensure_installed, { "black" })
        vim.list_extend(opts.ensure_installed, { "isort" })
        vim.list_extend(opts.ensure_installed, { "mypy" })
        vim.list_extend(opts.ensure_installed, { "pylint" })
        vim.list_extend(opts.ensure_installed, { "pydocstyle" })
        vim.list_extend(opts.ensure_installed, { "golangci-lint" })
        vim.list_extend(opts.ensure_installed, { "revive" })
      end,
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
