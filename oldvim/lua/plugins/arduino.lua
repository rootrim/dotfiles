return {
  {
    "stevearc/vim-arduino",
    config = function() end,
    lazy = false,
  },
  {
    "glebzlat/arduino-nvim",
    config = {
      function()
        require("arduino-nvim").setup()
      end,
      filetype = "arduino",
    },
  },
}
