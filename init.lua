-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if not vim.g.vscode then
  require("mini.files").setup()
  require("config.cmp-configure")
end
