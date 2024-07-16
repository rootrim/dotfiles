return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
         auto_install = true,
         highlight = { enable = true },
         indent = { enable = true },
      })

       vim.filetype.add({
         pattern = { [".*/Hyprland/.*%.conf"] = "hyprlang" },
      })
   end,
}
