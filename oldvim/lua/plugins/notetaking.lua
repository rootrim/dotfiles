return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = false,
    opts = {},
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    config = function() end,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "nvim-neorg/lua-utils.nvim" },
    lazy = false,
    version = "*",
    config = true,
  },
}
