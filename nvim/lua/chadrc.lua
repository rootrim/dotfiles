---@type ChadrcConfig
local M = {}

M = {
  base46 = {
    theme = "gruvbox",
    transparency = false,
    theme_toggle = { "chadwal", "gruvbox" },
  },

  nvdash = {
    load_on_startup = true,
    header = {
      -- "⠄⠄⠄⠄⠄⠄⠄⠄⠄⡔⠲⠶⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⠄⠄⠄⣘⡗⠔⡐⠃⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⠄⠄⠄⣨⣿⣠⠐⠞⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⡠⠔⢺⣿⢛⣿⣿⢄⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⣤⡶⠡⣲⢀⡴⢟⡻⡛⠓⠴⡾⣷⣱⡀⠄⠄⠄⠄⠄⠄",
      -- "⠄⠘⣟⣏⢤⣽⣷⣦⣴⡴⠤⠄⣰⣶⣟⣏⣈⠐⣀⠄⠄⠄⠄",
      -- "⠄⠄⢹⣿⣤⢸⣿⣿⣿⣿⣻⣿⣿⡿⠙⠿⣷⣶⣤⠥⠦⠄⠄",
      -- "⠄⠄⠘⣿⣷⣤⢚⣿⡿⠿⠿⠛⢛⡨⣥⣤⡈⠙⢻⠶⠧⠄⠄",
      -- "⠄⠄⠄⠙⢿⣿⣿⣧⣤⣤⣾⣿⢿⣯⠹⣻⡝⣰⣷⣶⡿⠃⠄",
      -- "⠄⠄⠄⠄⠈⠻⣿⡿⢿⣿⣻⣞⣿⠿⠷⢀⡔⢫⡿⠋⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⠸⣿⣿⣿⣯⢿⣦⣄⣘⣒⣛⠶⠊⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⠄⣿⣿⡿⢻⣿⢟⣷⣭⣽⣿⣷⡄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⢀⣴⢿⣿⣿⠯⠺⢾⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⢩⣿⣿⣿⣴⣮⣽⣿⣿⣿⣿⣿⢣⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⢺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣼⣆⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⢘⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⡿⠁⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠸⣿⣿⣿⣿⣿⣿⣿⣟⣋⠛⠄⠄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⢰⣿⣿⣿⣿⣿⣿⣿⣧⠺⠄⠄⠄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⢻⣿⣽⠤⡬⠋⠙⢿⣦⣀⡀⢄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠄⡘⣛⣭⣿⠂⠄⠄⠄⠉⠉⠋⠉⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⡔⠄⢀⣿⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄",
      -- "⠄⠄⠄⠄⠧⠖⠟⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄",
      "⣿⣿⣿⣿⣿⣿⣿⡿⡛⠟⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⠿⠨⡀⠄⠄⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⠿⢁⠼⠊⣱⡃⠄⠈⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⡿⠛⡧⠁⡴⣦⣔⣶⣄⢠⠄⠄⠹⣿⣿⣿⣿⣿⣿⣿⣤⠭⠏⠙⢿⣿⣿⣿⣿⣿",
      "⣿⡧⠠⠠⢠⣾⣾⣟⠝⠉⠉⠻⡒⡂⠄⠙⠻⣿⣿⣿⣿⣿⡪⠘⠄⠉⡄⢹⣿⣿⣿⣿",
      "⣿⠃⠁⢐⣷⠉⠿⠐⠑⠠⠠⠄⣈⣿⣄⣱⣠⢻⣿⣿⣿⣿⣯⠷⠈⠉⢀⣾⣿⣿⣿⣿",
      "⣿⣴⠤⣬⣭⣴⠂⠇⡔⠚⠍⠄⠄⠁⠘⢿⣷⢈⣿⣿⣿⣿⡧⠂⣠⠄⠸⡜⡿⣿⣿⣿",
      "⣿⣇⠄⡙⣿⣷⣭⣷⠃⣠⠄⠄⡄⠄⠄⠄⢻⣿⣿⣿⣿⣿⣧⣁⣿⡄⠼⡿⣦⣬⣰⣿",
      "⣿⣷⣥⣴⣿⣿⣿⣿⠷⠲⠄⢠⠄⡆⠄⠄⠄⡨⢿⣿⣿⣿⣿⣿⣎⠐⠄⠈⣙⣩⣿⣿",
      "⣿⣿⣿⣿⣿⣿⢟⠕⠁⠈⢠⢃⢸⣿⣿⣶⡘⠑⠄⠸⣿⣿⣿⣿⣿⣦⡀⡉⢿⣧⣿⣿",
      "⣿⣿⣿⣿⡿⠋⠄⠄⢀⠄⠐⢩⣿⣿⣿⣿⣦⡀⠄⠄⠉⠿⣿⣿⣿⣿⣿⣷⣨⣿⣿⣿",
      "⣿⣿⣿⡟⠄⠄⠄⠄⠄⠋⢀⣼⣿⣿⣿⣿⣿⣿⣿⣶⣦⣀⢟⣻⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⡆⠆⠄⠠⡀⡀⠄⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⡿⡅⠄⠄⢀⡰⠂⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "                                ",
    },
    buttons = {
      { txt = "Hoho, Dewa juubun chikazukanai youi!" },
      { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
      { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
      { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
      { txt = "󱥚  Themes", keys = "Spc t h", cmd = ":lua require('nvchad.themes').open()" },
    },
  },
}

return M
