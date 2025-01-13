local internal = require("../custom/functions")

return {
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
    cmd = {
      "NvimTmuxNavigateLeft",
      "NvimTmuxNavigateDown",
      "NvimTmuxNavigateUp",
      "NvimTmuxNavigateRight",
      "NvimTmuxNavigateLastActive",
      "NvimTmuxNavigateNext",
    },
    keys = {
      {
        "<C-h>",
        "<cmd>NvimTmuxNavigateLeft<cr>",
        desc = "Move one nvim/tmux pane to the left",
      },
      {
        "<C-j>",
        "<cmd>NvimTmuxNavigateDown<cr>",
        desc = "Move one nvim/tmux pane down",
      },
      {
        "<C-k>",
        "<cmd>NvimTmuxNavigateUp<cr>",
        desc = "Move one nvim/tmux pane up",
      },
      {
        "<C-l>",
        "<cmd>NvimTmuxNavigateRight<cr>",
        desc = "Move one nvim/tmux pane to the right",
      },
      {
        "<C-\\>",
        "<cmd>NvimTmuxNavigateLastActive<cr>",
        desc = "Move to the last active nvim/tmux pane",
      },
      {
        "<C-Space>",
        "<cmd>NvimTmuxNavigateNext<cr>",
        desc = "Move to the next nvim/tmux pane",
      },
    },
    config = function()
      require("nvim-tmux-navigation").setup({
        disable_when_zoomed = false, -- defaults to false
      })
    end,
  },
}
