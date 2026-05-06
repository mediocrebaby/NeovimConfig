return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 1100,
  opts = {
    extra_groups = {
      "NormalFloat",
      "WhichKeyNormal",
      "FzfLuaNormal",
      "SnacksDashboardNormal",
    },
  },
  config = function(_, opts)
    require("transparent").setup(opts)
    vim.cmd("TransparentEnable")
  end,
}
