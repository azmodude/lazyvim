return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      lua = { "luacheck" },
      sh = { "shellcheck" },
      go = { "golangcilint", "revive" },
      python = { "mypy", "pylint", "pycodestyle", "pydocstyle" },
    },
  },
}
