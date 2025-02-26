return {
  "gelguy/wilder.nvim",
  lazy = false,
  config = function()
    local wilder = require "wilder"

    wilder.setup {
      modes = { ":", "/", "?" },
    }

    wilder.set_option(
      "renderer",
      wilder.popupmenu_renderer(wilder.popupmenu_border_theme {
        highlighter = wilder.basic_highlighter(),
        highlights = {
          accent = "FloatBorder",
          border = "FloatBorder",
        },
        left = { " ", wilder.popupmenu_devicons() },
        border = "rounded",
      })
    )
  end,
}
