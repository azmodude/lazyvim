return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft["sh"] = { "shfmt" }
    opts.formatters_by_ft["python"] = { "isort", "black" }
  end,
}
