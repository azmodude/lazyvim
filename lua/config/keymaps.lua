-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- terminal
map("n", "<leader>1", "<cmd>1ToggleTerm<cr>", { desc = "ToggleTerm 1" })
map("n", "<leader>2", "<cmd>2ToggleTerm<cr>", { desc = "ToggleTerm 2" })
map("n", "<leader>3", "<cmd>3ToggleTerm<cr>", { desc = "ToggleTerm 3" })
map("n", "<leader>4", "<cmd>4ToggleTerm<cr>", { desc = "ToggleTerm 4" })
map("n", "<leader>5", "<cmd>5ToggleTerm<cr>", { desc = "ToggleTerm 5" })

map("i", "jk", "<ESC>", { silent = true, desc = "Exit insert mode" })
