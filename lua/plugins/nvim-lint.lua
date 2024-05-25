return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      sh = { "shellcheck" },
      go = { "golangcilint", "revive" },
      python = { "mypy", "pylint", "pydocstyle" },
    },
  },
}
