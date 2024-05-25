return {
  "stevearc/conform.nvim",
  opts = function()
    return {
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shellharden", "shfmt" },
        python = { "isort", "black" },
      },
    }
  end,
}
