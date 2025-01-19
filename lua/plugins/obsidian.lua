if not vim.g.vscode then
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
    },
  }
end
