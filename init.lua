-- Decide early whether startup was `nvim <dir>` so plugins can react.
local function should_fullscreen_neotree_on_start()
  if vim.fn.argc() ~= 1 then
    return false
  end

  local arg0 = vim.fn.argv(0)
  if type(arg0) ~= "string" or arg0 == "" then
    return false
  end

  local path = vim.fn.fnamemodify(arg0, ":p")
  return vim.fn.isdirectory(path) == 1
end

vim.g.neotree_fullscreen_on_start = should_fullscreen_neotree_on_start()

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- mini.files disabled; neo-tree used as explorer
