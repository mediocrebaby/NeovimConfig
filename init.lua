-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("neo-tree").setup({
  filesystem = {
    follow_current_file = {
      enabled = true,
    },
    use_libuv_file_watcher = true,
  },
  window = {
    position = "current",
  },
})
