return {
  "stevearc/conform.nvim",
  opts = function()
    return {
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shellharden", "shfmt" },
        hcl = { "packer_fmt" },
        go = { "gofumpt" },
        markdown = { "markdownlint" },
        python = { "isort", "black" },
      },
    }
  end,
}
