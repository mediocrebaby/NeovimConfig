return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = function(_, opts)
      opts = opts or {}

      opts.window = opts.window or {}
      opts.window.position = opts.window.position or "left"
      opts.window.width = opts.window.width or 32

      opts.filesystem = opts.filesystem or {}
      opts.filesystem.follow_current_file = opts.filesystem.follow_current_file or { enabled = true }
      opts.filesystem.hijack_netrw_behavior = opts.filesystem.hijack_netrw_behavior or "open_default"
      opts.filesystem.use_libuv_file_watcher = opts.filesystem.use_libuv_file_watcher ~= false

      if vim.g.neotree_fullscreen_on_start then
        opts.window.position = "float"
        opts.window.popup = opts.window.popup or {}
        opts.window.popup.size = { width = "100%", height = "100%" }
      end

      return opts
    end,
  },
}

