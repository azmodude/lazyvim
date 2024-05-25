local internal = require("../custom/functions")

return {
  { "folke/zen-mode.nvim", lazy = true, cmd = { "ZenMode" } },
  { "hiphish/rainbow-delimiters.nvim", lazy = true, event = "BufReadPre" },
  { "sindrets/diffview.nvim", lazy = true, cmd = { "DiffviewOpen", "DiffviewFileHistory" } },
  {
    "neogitorg/neogit",
    lazy = true,
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
    },
    config = true,
  },
  {
    "alexghergh/nvim-tmux-navigation",
    lazy = true,
    event = "BufEnter",
    config = function()
      require("nvim-tmux-navigation").setup({
        keybindings = {
          left = "<C-h>",
          down = "<C-j>",
          up = "<C-k>",
          right = "<C-l>",
        },
      })
    end,
  },
  {
    "vimwiki/vimwiki",
    lazy = true,
    event = "BufEnter *.md",
    keys = { "<leader>ww", "<leader>wt" },
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/vimwiki/",
          syntax = "markdown",
          ext = ".md",
        },
      }
    end,
  },
  {
    "akinsho/nvim-toggleterm.lua",
    keys = "<C-`>",
    event = "VeryLazy",
    init = function()
      -- Hide number column for
      -- vim.cmd [[au TermOpen * setlocal nonumber norelativenumber]]

      -- Esc twice to get to normal mode
      vim.cmd([[tnoremap <ESC> <C-\><C-N>]])
    end,
    opts = {
      size = 20,
      open_mapping = [[<C-`>]],
      shading_factor = 0.3, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      direction = "float",
    },
  },
}
