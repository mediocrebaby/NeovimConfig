if vim.g.vscode then
  return {}
end
return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "knowledge",
        path = "~/Documents/Note/knowledge",
      },
    },
    completion = {
      -- 启用补全
      nvim_cmp = true,
      -- 两个字符触发补全
      min_chars = 2,
    },
    preferred_link_style = "wiki",

    attachments = {
      -- 设置默认的图片文件路径
      img_folder = "~/Documents/Note/Knowledge/attachments",
    },

    daily_notes = {
      folder = "每日任务",
      data_format = "%Y-%m-%d",
      default_tags = { "每日任务" },
      template = nil,
    },
  },
}
