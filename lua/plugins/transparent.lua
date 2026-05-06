return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 1100,
  opts = {
    extra_groups = {
      "NormalFloat",
      "NvimTreeNormal",
      "NeoTreeNormal",
      "NeoTreeNormalNC",
      "TelescopeNormal",
      "TelescopeBorder",
      "WhichKeyFloat",
      "LazyNormal",
      "MasonNormal",
      "NotifyBackground",
      "SnacksDashboardNormal",
      "SnacksPickerNormal",
    },
  },
  config = function(_, opts)
    require("transparent").setup(opts)
    vim.cmd("TransparentEnable")
  end,
}
