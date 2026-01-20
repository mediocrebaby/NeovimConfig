-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if not vim.g.vscode then
  local map = vim.keymap.set

  map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Explorer (Neo-tree)", noremap = true, silent = true })
  map("n", "<leader>E", function()
    require("neo-tree.command").execute({
      action = "focus",
      source = "filesystem",
      reveal = true,
      reveal_force_cwd = true,
    })
  end, { desc = "Explorer (Neo-tree) reveal current file", noremap = true, silent = true })
end

