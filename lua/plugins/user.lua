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
  {
    "serenevoid/kiwi.nvim",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>cw", ':lua require("kiwi").open_wiki_index()<cr>', desc = "Open Wiki index" },
      {
        "<leader>wp",
        ':lua require("kiwi").open_wiki_index("personal")<cr>',
        desc = "Open index of personal wiki",
      },
      { "T", ':lua require("kiwi").todo.toggle()<cr>', desc = "Toggle Markdown Task" },
    },
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
