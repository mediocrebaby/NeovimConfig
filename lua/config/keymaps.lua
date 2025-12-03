-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if not vim.g.vscode then
  local map = vim.keymap.set
  map(
    "n",
    "<leader>e",
    ":lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<cr>",
    { desc = "Triggle Mini Files", noremap = true, silent = true }
  )
end
